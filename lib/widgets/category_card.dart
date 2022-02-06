import 'package:flutter/material.dart';
import 'package:gameplay/themes/app_text_styles.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.title,
    required this.icon, 
    this.onTap,
  }) : super(key: key);

  final String title;
  final String icon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 120,
        width: 100,
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF1D2766),
                Color(0xFF171F52),
              ]),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: const Color(0xFF171F52),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              icon,
              width: 48,
              height: 48,
            ),
            const SizedBox(height: 10),
            Text(
              title,
              style: AppTextStyles.subtitleBoldHome,
            ),
          ],
        ),
      ),
    );
  }
}
