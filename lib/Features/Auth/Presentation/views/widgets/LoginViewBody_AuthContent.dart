import 'package:fantasy/constant.dart';
import 'package:fantasy/core/utils/textStyles.dart';
import 'package:fantasy/core/widgets/CustomButton.dart';
import 'package:fantasy/core/widgets/CustomTextFeiled.dart';
import 'package:flutter/material.dart';

class LoginviewbodyAuthcontent extends StatelessWidget {
  TextEditingController LoginEmailController = TextEditingController();
  TextEditingController LoginPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: HorizontalPadding),
      child: Column(
        children: [
          CustomTextFeiled(
              controller: LoginEmailController,
              hintText: "البريد الالكترونى",
              validator: (value) {
                if (value!.isEmpty) {
                  return "البريد الالكترونى مطلوب";
                }
              },
              obscureText: false,
              keyboardType: TextInputType.emailAddress),
          const SizedBox(
            height: 10,
          ),
          CustomTextFeiled(
              suffix: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.visibility_off,
                    color: Color(0xff818181),
                  )),
              controller: LoginPasswordController,
              hintText: "كلمة المرور",
              validator: (value) {
                if (value!.isEmpty) {
                  return "كلمة المرور مطلوبة";
                }
              },
              obscureText: true,
              keyboardType: TextInputType.visiblePassword),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "نسيت كلمة المرور؟",
                    style: textStyles.textstyle13.copyWith(color: MainColor),
                  )),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          CustomButton(onPressed: () {}, text: "تسجيل الدخول"),
        ],
      ),
    );
  }
}
