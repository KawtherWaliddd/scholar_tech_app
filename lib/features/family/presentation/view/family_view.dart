import 'package:flutter/material.dart';
import 'package:scolar/core/theme/colors_app.dart';
import 'package:scolar/core/theme/theming.dart';

class FamilyView extends StatelessWidget {
  FamilyView({super.key});

  final List<Map<String, String>> familyMembers = [
    {'en': 'daughter', 'other': 'ابنة'},
    {'en': 'father', 'other': 'أب'},
    {'en': 'grandfather', 'other': 'جد'},
    {'en': 'grandmother', 'other': 'جدة'},
    {'en': 'mother', 'other': 'أم'},
    {'en': 'older_brother', 'other': 'أخ أكبر'},
    {'en': 'older_sister', 'other': 'أخت كبرى'},
    {'en': 'son', 'other': 'ابن'},
    {'en': 'younger_brother', 'other': 'أخ أصغر'},
    {'en': 'younger_sister', 'other': 'أخت صغرى'},
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      itemCount: familyMembers.length,
      separatorBuilder: (_, __) => const SizedBox(height: 12),
      itemBuilder: (context, index) {
        final member = familyMembers[index];
        final imagePath =
            'assets/images/family_members/family_${member['en']}.png';

        return Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: ColorsApp.mainColor,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: ColorsApp.mainColor,
                blurRadius: 6,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  imagePath,
                  height: size.width * 0.22,
                  width: size.width * 0.22,
                  fit: BoxFit.cover,
                ),
              ),
              Spacer(),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      member['en']!,
                      style: Theming.lightMode.textTheme.titleMedium?.copyWith(
                        color: ColorsApp.primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      member['other']!,
                      style: Theming.lightMode.textTheme.bodyMedium?.copyWith(
                        color: ColorsApp.primaryColor,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
//assets/images/family_members/family_father.png
//assets/images/family_members/family_father.png