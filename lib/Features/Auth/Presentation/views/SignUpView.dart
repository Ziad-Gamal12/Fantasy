import 'package:fantasy/Features/Auth/Domain/AuthRepos/AuthRepo.dart';
import 'package:fantasy/Features/Auth/Presentation/manager/SignUp/s_ign_up_cubit.dart';
import 'package:fantasy/Features/Auth/Presentation/views/widgets/SignUpViewBody.dart';
import 'package:fantasy/core/services/get_it_Service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class signupview extends StatelessWidget {
  static const routeName = '/signupview';

  const signupview({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SIgnUpCubit(getIt<AuthRepo>()),
      child: Scaffold(
        body: SafeArea(child: Builder(builder: (context) {
          return Signupviewbody();
        })),
      ),
    );
  }
}
