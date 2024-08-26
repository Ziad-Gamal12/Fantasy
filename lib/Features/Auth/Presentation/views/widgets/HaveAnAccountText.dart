import 'package:fantasy/core/utils/textStyles.dart';
import 'package:flutter/material.dart';

class HaveAnAccountText extends StatelessWidget {
  const HaveAnAccountText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "تمتلك حساب بالفعل؟ ",
          style:
              textStyles.textstyle16.copyWith(color: const Color(0xFF949D9E)),
        ),
        InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Text(
            "تسجيل دخول",
            style:
                textStyles.textstyle16.copyWith(color: const Color(0xFF1B5E37)),
          ),
        )
      ],
    );
  }
}
