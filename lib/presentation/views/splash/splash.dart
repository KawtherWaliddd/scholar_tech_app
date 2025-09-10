import 'dart:async';
import 'package:flutter/material.dart';


import '../../../constants/colors_app.dart';
import '../../../constants/image_app.dart';
import '../home/home.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});
static String id='splashView';

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Timer(Duration(milliseconds: 1200), (){
      Navigator.pushNamed(context, HomeView.id);
    });

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.primaryColor,
      body: Center(child:Image.asset(ImageApp.logoImage,
        width: MediaQuery.of(context).size.width*0.7,)
        ,),
    );
  }
}