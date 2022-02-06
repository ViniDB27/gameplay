import 'package:flutter/material.dart';
import 'package:gameplay/themes/app_colors.dart';
import 'package:gameplay/themes/app_images.dart';
import 'package:gameplay/themes/app_text_styles.dart';

class SocialButtonLogin extends StatelessWidget {
  const SocialButtonLogin({
    Key? key,
    required this.onTap,
    required this.icon,
    required this.title,
  }) : super(key: key);

  final String icon;
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: Container(
          height: 56,
          width: size.width,
          decoration: BoxDecoration(
            color: AppColors.secondary,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            children: [
              Container(
                height: 56,
                width: 56,
                child: Image.asset(
                  icon,
                  width: 24,
                  height: 24,
                ),
              ),
              Container(
                height: 56,
                width: 1,
                color: AppColors.secondaryDark,
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      title,
                      style: AppTextStyles.discordLogin,
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
