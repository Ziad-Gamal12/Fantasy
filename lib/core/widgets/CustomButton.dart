// ignore_for_file: file_names

import 'package:fantasy/constant.dart';
import 'package:fantasy/core/utils/textStyles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.onPressed, required this.text});
  final void Function() onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 54,
      minWidth: double.infinity,
      color: MainColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      onPressed: onPressed,
      child: Text(
        text,
        style: textStyles.textstyle16
            .copyWith(fontWeight: FontWeight.w700, color: Colors.white),
      ),
    );
  }
}
