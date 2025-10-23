import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scolar/core/theme/theming.dart';

class ColorView extends StatelessWidget {
  ColorView({super.key});

  final List<String> colors = [
    'White',
    'Black',
    'Brown',
    'Dusty_Yellow',
    'Gray',
    'Green',
    'Red',
    'White',
    'Yellow',
  ];

  final List<String> colorsInArabic = [
    'أبيض',
    'أسود',
    'بني',
    'أصفر غامق',
    'رمادي',
    'أخضر',
    'أحمر',
    'أبيض',
    'أصفر',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Colors Tone', style: Theming.lightMode.textTheme.bodyLarge),
        Expanded(
          child: ListView.builder(
            padding: EdgeInsets.only(left: 14),
            itemCount: colors.length,
            itemBuilder: (context, index) {
              return Row(
                children: [
                  Column(
                    children: [
                      Text(
                        colors[index],
                        style: Theming.lightMode.textTheme.bodyMedium,
                      ),
                      Text(
                        colorsInArabic[index],
                        style: Theming.lightMode.textTheme.bodyMedium,
                      ),
                    ],
                  ),
                  Spacer(),
                  Image.asset(
                    'assets/images/colors/color_${colors[index].toLowerCase()}.png',
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
