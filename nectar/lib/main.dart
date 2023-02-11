import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:nectar/views/home_page_screen.dart';
import 'package:nectar/views/login_screen.dart';
import 'package:page_transition/page_transition.dart';
import 'views/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home: AnimatedSplashScreen(
        splash: "assets/logo.png",
        nextScreen: const OnBoardingScreen(),
        backgroundColor: const Color(0xff53B175),
        splashTransition: SplashTransition.fadeTransition,
        pageTransitionType:  PageTransitionType.fade,
        animationDuration: const Duration(milliseconds: 800),
      ),
      routes: {
        "/login" : (context) => const LoginScreen(),
        "/homePage" : (context) => const HomePageScreen(),
      },
    );
  }
}

