import 'package:fantasy/constant.dart';
import 'package:fantasy/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Termscheckbox extends StatefulWidget {
  final ValueChanged<bool> onChanged;
  Termscheckbox({
    super.key,
    required this.onChanged,
  });

  @override
  State<Termscheckbox> createState() => _TermscheckboxState();
}

class _TermscheckboxState extends State<Termscheckbox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        isChecked = !isChecked;
        widget.onChanged(isChecked);
        setState(() {});
      },
      child: AnimatedContainer(
          height: 24,
          width: 24,
          duration: const Duration(milliseconds: 100),
          decoration: ShapeDecoration(
            color: isChecked ? MainColor : Colors.white,
            shape: RoundedRectangleBorder(
              side: BorderSide(
                  width: 1.50,
                  color: isChecked ? Colors.transparent : Color(0xFFDCDEDE)),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: isChecked
              ? Padding(
                  padding: const EdgeInsets.all(4),
                  child: SvgPicture.asset(
                    Assets.assetsImagesCheckedIcon,
                  ),
                )
              : const SizedBox()),
    );
  }
}
