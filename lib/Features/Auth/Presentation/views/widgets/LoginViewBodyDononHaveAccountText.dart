import 'package:fantasy/Features/Auth/Presentation/views/SignUpView.dart';
import 'package:fantasy/constant.dart';
import 'package:fantasy/core/utils/textStyles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginViewBodyDononHaveAccountText extends StatelessWidget {
  const LoginViewBodyDononHaveAccountText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(signupview.routeName);
      },
      child: Text.rich(TextSpan(
        text: "ليس لديك حساب؟ ",
        style: textStyles.textstyle16
            .copyWith(color: Color(0xff000000), fontWeight: FontWeight.w400),
        children: [
          TextSpan(
            text: "انشاء حساب",
            style: textStyles.textstyle16
                .copyWith(color: MainColor, fontWeight: FontWeight.w700),
          ),
        ],
      )),
    );
  }
}
