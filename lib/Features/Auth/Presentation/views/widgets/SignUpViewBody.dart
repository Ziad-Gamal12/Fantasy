import 'package:fantasy/Features/Auth/Presentation/manager/SignUp/s_ign_up_cubit.dart';
import 'package:fantasy/Features/Auth/Presentation/views/widgets/AuthAppBar.dart';
import 'package:fantasy/Features/Auth/Presentation/views/widgets/HaveAnAccountText.dart';
import 'package:fantasy/Features/Auth/Presentation/views/widgets/SignUp_TextFieledSection.dart';
import 'package:fantasy/Features/Auth/Presentation/views/widgets/TermsAndConditions.dart';
import 'package:fantasy/constant.dart';

import 'package:fantasy/core/utils/variables.dart';
import 'package:fantasy/core/widgets/AwesomeDialog.dart';
import 'package:fantasy/core/widgets/CustomButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class Signupviewbody extends StatelessWidget {
  bool ischecked = false;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SIgnUpCubit, SIgnUpState>(
      listener: (context, state) {
        if (state is SIgnUpSuccess) {
          successdialog(
              context: context,
              SuccessMessage: "تم التسجيل بنجاح",
              btnOkOnPress: () {
                GoRouter.of(context).pop();
              }).show();
        } else if (state is SIgnUpError) {
          errordialog(context, state.errmessage).show();
        }
      },
      builder: (context, state) {
        return SingleChildScrollView(
          child: Form(
              key: variables.SignUpkey,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: HorizontalPadding),
                child: Column(
                  children: [
                    AuthAppBar(
                        appBarTitle: "حساب جديد",
                        onTapIcon: () {
                          Navigator.of(context).pop();
                        }),
                    const SizedBox(
                      height: 24,
                    ),
                    SignUp_TextFieledSection(),
                    const SizedBox(
                      height: 16,
                    ),
                    TermsAndConditions(
                      onChanged: (value) {
                        ischecked = value;
                      },
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.29,
                    ),
                    state is SIgnUpLoading
                        ? Center(child: const CircularProgressIndicator())
                        : CustomButton(
                            onPressed: () {
                              if (variables.SignUpkey.currentState!
                                  .validate()) {
                                if (ischecked == true) {
                                  context.read<SIgnUpCubit>().SignUp(
                                      email:
                                          variables.SignupemailController.text,
                                      password: variables
                                          .SignupPasswordController.text,
                                      name: variables
                                          .signUpUserNameController.text);
                                } else {
                                  errordialog(context,
                                          "يجب عليك الموافقة علي الشروط والاحكام")
                                      .show();
                                }
                              }
                            },
                            text: "إنشاء حساب جديد"),
                    const SizedBox(
                      height: 26,
                    ),
                    const HaveAnAccountText(),
                  ],
                ),
              )),
        );
      },
    );
  }
}
