import 'package:fantasy/Features/Splash/presentation/views/widgets/Splashview_body.dart';
import 'package:fantasy/constant.dart';
import 'package:flutter/material.dart';

class Splashview extends StatelessWidget {
  const Splashview({super.key});
  static const String routeName = '/';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainColor,
      body: Splashview_body(),
    );
  }
}
