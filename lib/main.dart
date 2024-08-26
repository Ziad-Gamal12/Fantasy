import 'package:fantasy/constant.dart';
import 'package:fantasy/core/utils/App_router.dart';
import 'package:fantasy/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const fantasy());
}

class fantasy extends StatelessWidget {
  const fantasy({super.key});

  // This widget is the root of your application.
  @override
  Widget build(
    BuildContext context,
  ) {
    return MaterialApp.router(
      theme: ThemeData(
        fontFamily: "Cairo",
      ),
      debugShowCheckedModeBanner: false,
      locale: const Locale("ar"),
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      routerConfig: App_router.router,
    );
  }
}
