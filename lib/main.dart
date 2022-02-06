import 'package:flutter/material.dart';
import 'package:gameplay/routes/app_routes.dart';
import 'package:gameplay/screens/home_screen.dart';
import 'package:gameplay/screens/login_screen.dart';
import 'package:gameplay/screens/splash_screen.dart';
import 'package:gameplay/themes/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      initialRoute: AppRoutes.homeScreen,
      routes: {
        AppRoutes.splashScreen: (ctx) => const SplashScreen(),
        AppRoutes.loginScreen: (ctx) => const LoginScreen(),
        AppRoutes.homeScreen: (ctx) => const HomeScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
