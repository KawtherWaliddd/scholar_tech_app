import 'package:flutter/material.dart';
import 'package:scolar/core/theme/colors_app.dart';
import 'package:scolar/core/theme/theming.dart';
import 'package:scolar/core/utils/image_app.dart';
import 'package:scolar/features/number/presentation/view/widgets/custom_item_list.dart';

class NumberView extends StatelessWidget {
  const NumberView({super.key});

  final List<String> mathNumbers = const [
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    "10",
  ];

  final List<String> numbers = const [
    "One",
    "Two",
    "Three",
    "Four",
    "Five",
    "Six",
    "Seven",
    "Eight",
    "Nine",
    "Ten",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(ImageApp.number10, height: 120),
        const Divider(color: ColorsApp.mainColor, thickness: 3),
        Text('Numbers', style: Theming.lightMode.textTheme.bodyLarge),
        const Divider(color: ColorsApp.mainColor, thickness: 3),
        Expanded(
          child: CustomItemList(items: numbers, items2: mathNumbers),
        ),
      ],
    );
  }
}
