import 'package:flutter/material.dart';
import 'package:scolar/features/number/data/models/number_details_args.dart';
import 'package:scolar/features/number/presentation/view/number_details.dart';
import '../../../../../core/theme/colors_app.dart';
import '../../../../../core/theme/theming.dart';

class CustomItemList extends StatelessWidget {
  const CustomItemList({super.key, required this.items, required this.items2});

  final List<String> items;
  final List<String> items2;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(12),
      itemCount: items.length,
      separatorBuilder: (context, index) => const SizedBox(
        height: 20,
        child: Divider(color: ColorsApp.mainColor, thickness: 1),
      ),
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            Navigator.pushNamed(
              context,
              NumberDetails.id,
              arguments: NumberDetailsArgs(
                num: items[index],
                mathNum: items2[index],
                index: index,
              ),
            );
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                items[index],
                textAlign: TextAlign.center,
                style: Theming.lightMode.textTheme.bodyMedium,
              ),
              Text(
                items2[index],
                textAlign: TextAlign.center,
                style: Theming.lightMode.textTheme.bodyMedium,
              ),
            ],
          ),
        );
      },
    );
  }
}
