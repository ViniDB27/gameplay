import 'package:flutter/material.dart';
import 'package:gameplay/themes/app_colors.dart';
import 'package:gameplay/themes/app_images.dart';
import 'package:gameplay/themes/app_text_styles.dart';
import 'package:gameplay/widgets/social_button_login.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Container(
        height: size.height,
        width: size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              alignment: AlignmentDirectional.center,
              fit: StackFit.passthrough,
              children: [
                Image.asset(
                  AppImages.union,
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  AppImages.banner,
                  fit: BoxFit.cover,
                ),
              ],
            ),
            Text(
              "Conecte-se \ne organize suas \njogatinas",
              style: AppTextStyles.titleLogin,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            Text(
              "Crie grupos para jogar seus games \nfavoritos com seus amigos",
              style: AppTextStyles.subtitleLogin,
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.all(50),
              child: SocialButtonLogin(
                title: 'Entrar com Discord',
                icon: AppImages.discord,
                onTap: (){},
              ),
            )
          ],
        ),
      ),
    );
  }
}
