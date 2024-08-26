import 'package:fantasy/Features/Auth/Presentation/views/LoginView.dart';
import 'package:fantasy/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Splashview_body extends StatefulWidget {
  @override
  State<Splashview_body> createState() => _Splashview_bodyState();
}

class _Splashview_bodyState extends State<Splashview_body> {
  @override
  void initState() {
    Navigation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(Assets.assetsImagesLogo),
          //  Image.asset(Assets.assetsImagesSplashtext),
        ]);
  }

  Navigation() {
    Future.delayed(Duration(seconds: 3), () {
      GoRouter.of(context).pushReplacement(Loginview.routeName);
    });
  }
}
