import 'package:fantasy/Features/Auth/Presentation/views/LoginView.dart';
import 'package:fantasy/Features/Auth/Presentation/views/SignUpView.dart';
import 'package:fantasy/Features/Splash/presentation/views/SplashView.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class App_router {
  static GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: Splashview.routeName,
        builder: (BuildContext context, GoRouterState state) {
          return const Splashview();
        },
      ),
      GoRoute(
        path: Loginview.routeName,
        builder: (BuildContext context, GoRouterState state) {
          return const Loginview();
        },
      ),
      GoRoute(
        path: signupview.routeName,
        builder: (BuildContext context, GoRouterState state) {
          return const signupview();
        },
      ),
    ],
  );
}
