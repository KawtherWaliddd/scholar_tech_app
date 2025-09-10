
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants/theming.dart';
import '../../shared_widgets/bottom_navigation_bar.dart';
import '../color_view/color_view.dart';
import '../family_view/family_view.dart';
import '../number_view/number_view.dart';
import '../phrase_view/phrase_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  static String id = 'home';

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
 int currentIndex=0;
List<Widget>viewsBody=[
 NumberView(),
  ColorView(),
  FamilyView(),
  PhraseView()
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scholar Tech',
        style: Theming.lightMode.textTheme.headlineLarge,
      ),),
      body: viewsBody[currentIndex],
      bottomNavigationBar: CustomButtonNavigationBar(
          currentIndex: currentIndex,
        onClick: (selectedIndex){
          currentIndex=selectedIndex;
        setState(() {});
      },
        selectedIndex: currentIndex,)
    );
  }
}