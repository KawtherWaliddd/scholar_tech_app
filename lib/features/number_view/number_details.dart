import 'package:flutter/material.dart';
import 'package:scolar/core/theme/colors_app.dart';
import 'package:scolar/core/theme/theming.dart';
import 'package:scolar/features/number/data/models/number_details_args.dart';

class NumberDetails extends StatelessWidget {
  const NumberDetails({super.key});
  static String id = 'numberDetails';
  @override
  Widget build(BuildContext context) {
    NumberDetailsArgs numberDetails =
        ModalRoute.of(context)?.settings.arguments as NumberDetailsArgs;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          numberDetails.num,
          style: Theming.lightMode.textTheme.headlineLarge,
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(36),
        padding: EdgeInsets.all(16),
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
            Divider(
              color: ColorsApp.primaryColor,
              height: 16,
              indent: 36,
              endIndent: 36,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Name in anther lan",
                  style: Theming.lightMode.textTheme.bodySmall,
                ),
                Text(
                  numberDetails.mathNum,
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
