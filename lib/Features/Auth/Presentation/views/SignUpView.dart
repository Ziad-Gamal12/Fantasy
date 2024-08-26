import 'package:fantasy/Features/Auth/Presentation/views/widgets/SignUpViewBody.dart';
import 'package:flutter/material.dart';

class signupview extends StatelessWidget {
  static const routeName = '/signupview';

  const signupview({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Signupviewbody()),
    );
  }
}
