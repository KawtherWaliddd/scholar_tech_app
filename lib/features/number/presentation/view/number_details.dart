import 'package:flutter/material.dart';
import 'package:scolar/core/theme/colors_app.dart';
import 'package:scolar/core/theme/theming.dart';
import 'package:scolar/features/number/data/models/number_details_args.dart';

class NumberDetails extends StatelessWidget {
  const NumberDetails({super.key});

  static String id = 'numberDetails';

  final List<String> numberInAtherLan = const [
    'واحد',
    'اتنين',
    'تلاته',
    'اربعه',
    'خمسه',
    'سته',
    'سبعه',
    'ثمانيه',
    'تسعه',
    'عشره',
  ];

  @override
  Widget build(BuildContext context) {
    final numberDetails =
        ModalRoute.of(context)!.settings.arguments as NumberDetailsArgs;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          numberDetails.num,
          style: Theming.lightMode.textTheme.headlineLarge,
        ),
      ),
      body: Container(
        margin: const EdgeInsets.all(36),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: ColorsApp.mainColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              "assets/images/numbers/number_${numberDetails.num.toLowerCase()}.png",
            ),
            const Divider(
              color: ColorsApp.primaryColor,
              height: 16,
              indent: 36,
              endIndent: 36,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  numberDetails.mathNum,
                  style: Theming.lightMode.textTheme.bodySmall,
                ),
                Text(
                  numberInAtherLan[int.parse(numberDetails.mathNum) - 1],
                  style: Theming.lightMode.textTheme.bodySmall,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
