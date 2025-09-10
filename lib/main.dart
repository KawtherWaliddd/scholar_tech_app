

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scolar/constants/theming.dart';
import 'package:scolar/presentation/views/home/home.dart';
import 'package:scolar/presentation/views/splash/splash.dart';

main() {
  runApp(ScholarApp());
}

class ScholarApp extends StatelessWidget {
  const ScholarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:Theming.lightMode ,//light theme.
      // darkTheme: ,//dark theme.
      // themeMode: ,// equal controller of theme mode.
      initialRoute: SplashView.id,
      routes: {
        SplashView.id: (context) => SplashView(),
        HomeView.id: (context) => HomeView(),
      },
    );
  }
}
