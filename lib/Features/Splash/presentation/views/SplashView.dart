import 'package:fantasy/Features/Splash/presentation/views/widgets/Splashview_body.dart';
import 'package:flutter/material.dart';

class Splashview extends StatelessWidget {
  const Splashview({super.key});
  static const String routeName = '/';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Splashview_body(),
    );
  }
}
