import 'package:bloc/bloc.dart';
import 'package:fantasy/core/services/BlocObserver.dart';
import 'package:fantasy/core/services/Shared_preferences.dart';
import 'package:fantasy/core/services/get_it_Service.dart';
import 'package:fantasy/core/utils/App_router.dart';
import 'package:fantasy/firebase_options.dart';
import 'package:fantasy/generated/l10n.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await shared_preferences_Services.init();
  setup_Getit();
  Bloc.observer = Custom_Blocobserver();
  runApp(const fantasy());
}

class fantasy extends StatelessWidget {
  const fantasy({super.key});

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
