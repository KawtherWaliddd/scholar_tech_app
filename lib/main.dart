import 'package:flutter/material.dart';
import 'package:scolar/core/theme/theming.dart';
import 'package:scolar/features/home/presentation/view/home.dart';
import 'package:scolar/features/number/presentation/view/number_details.dart';
import 'package:scolar/features/splash/presentation/view/splash.dart';

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
        NumberDetails.id: (context) => NumberDetails(),
      },
    );
  }
}
