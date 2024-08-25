import 'package:fantasy/Features/Splash/presentation/views/SplashView.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: Splashview.routeName,
      builder: (BuildContext context, GoRouterState state) {
        return const Splashview();
      },
    ),
  ],
);
