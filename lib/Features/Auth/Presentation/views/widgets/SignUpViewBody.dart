import 'package:fantasy/Features/Auth/Presentation/views/widgets/AuthAppBar.dart';
import 'package:fantasy/Features/Auth/Presentation/views/widgets/SignUp_TextFieledSection.dart';
import 'package:fantasy/Features/Auth/Presentation/views/widgets/TermsAndConditions.dart';
import 'package:fantasy/constant.dart';
import 'package:fantasy/core/utils/textStyles.dart';
import 'package:fantasy/core/utils/variables.dart';
import 'package:fantasy/core/widgets/CustomButton.dart';
import 'package:flutter/material.dart';

class Signupviewbody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
          key: variables.SignUpkey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: HorizontalPadding),
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
                  onChanged: (value) {},
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.29,
                ),
                CustomButton(onPressed: () {}, text: "إنشاء حساب جديد"),
                SizedBox(
                  height: 26,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "تمتلك حساب بالفعل؟ ",
                      style: textStyles.textstyle16
                          .copyWith(color: const Color(0xFF949D9E)),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        "تسجيل دخول",
                        style: textStyles.textstyle16
                            .copyWith(color: const Color(0xFF1B5E37)),
                      ),
                    )
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
