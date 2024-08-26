import 'package:fantasy/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginViewBodyLogo extends StatelessWidget {
  const LoginViewBodyLogo({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1 / 1,
      child: SvgPicture.asset(
        Assets.assetsImagesAssetsImagesLoginLogo,
        height: height * 0.3,
      ),
    );
  }
}
