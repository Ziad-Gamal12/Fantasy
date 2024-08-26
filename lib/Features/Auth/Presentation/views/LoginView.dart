import 'package:fantasy/Features/Auth/Presentation/views/widgets/LoginViewBody.dart';
import 'package:flutter/material.dart';

class Loginview extends StatelessWidget {
  const Loginview({super.key});
  static const routeName = '/LoginView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Loginviewbody()),
    );
  }
}
