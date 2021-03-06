import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gameplay/routes/app_routes.dart';
import 'package:gameplay/themes/app_colors.dart';
import 'package:gameplay/themes/app_images.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(
      const Duration(seconds: 2),
      () => Navigator.of(context).pushReplacementNamed(
        AppRoutes.loginScreen,
      ),
    );

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
