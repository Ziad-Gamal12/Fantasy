import 'package:fantasy/Features/Auth/Presentation/views/widgets/TermsCheckBox.dart';
import 'package:fantasy/constant.dart';
import 'package:fantasy/core/utils/textStyles.dart';
import 'package:flutter/material.dart';

class TermsAndConditions extends StatelessWidget {
  final ValueChanged<bool> onChanged;

  const TermsAndConditions({super.key, required this.onChanged});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: HorizontalPadding),
      child: Transform.translate(
        offset: Offset(14, 0),
        child: Row(
          children: [
            Termscheckbox(
              onChanged: onChanged,
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: SizedBox(
                child: Text.rich(TextSpan(children: [
                  TextSpan(
                      text: "من خلال إنشاء حساب ، فإنك توافق على",
                      style: textStyles.textstyle13
                          .copyWith(color: const Color(0xff949D9E))),
                  TextSpan(
                      text: "الشروط والأحكام الخاصة بنا ",
                      style: textStyles.textstyle13.copyWith(color: MainColor))
                ])),
              ),
            )
          ],
        ),
      ),
    );
  }
}
