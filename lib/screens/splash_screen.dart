import 'package:flutter/material.dart';
import 'package:gameplay/themes/app_colors.dart';
import 'package:gameplay/themes/app_images.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Image.asset(
          AppImages.gameplay,
        ),
      ),
    );
  }
}
