import 'package:fantasy/Features/Auth/Presentation/views/widgets/LoginViewBodyDononHaveAccountText.dart';
import 'package:fantasy/Features/Auth/Presentation/views/widgets/LoginViewBodyLogo.dart';
import 'package:fantasy/Features/Auth/Presentation/views/widgets/LoginViewBody_AuthContent.dart';
import 'package:fantasy/core/utils/textStyles.dart';
import 'package:flutter/material.dart';

class Loginviewbody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      LoginViewBodyLogo(height: height),
      /* Text(
        "تسجيل الدخول ",
        style: textStyles.textstyle19.copyWith(color: Color(0xff000000)),
      ),
      const SizedBox(
        height: 10,
      ),*/
      LoginviewbodyAuthcontent(),
      const Spacer(),
      const LoginViewBodyDononHaveAccountText(),
      const SizedBox(
        height: 20,
      )
    ]);
  }
}
