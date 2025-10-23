import 'package:flutter/material.dart';

class CustomButtonNavigationBar extends StatelessWidget {
  const CustomButtonNavigationBar({super.key,
    required this.currentIndex,
    required this.onClick,
    required this.selectedIndex,
    });
final int currentIndex;
final Function onClick;
final int selectedIndex;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: currentIndex,
        onTap:(selectedIndex){
          onClick(selectedIndex);
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.numbers),
            label: 'Numbers',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.color_lens_outlined),
              label: 'Colors'),
          BottomNavigationBarItem(
              icon: Icon(Icons.family_restroom),
              label: 'Family Member'),
          BottomNavigationBarItem(
              icon: Icon(Icons.abc),
              label: 'Phrases')]);
  }
}