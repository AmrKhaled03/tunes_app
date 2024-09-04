import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:page_transition/page_transition.dart';
import 'package:tunes/constants/strings.dart';
import 'package:tunes/views/screens/home.dart';
import 'package:lottie/lottie.dart';

class AnimatedScreen extends StatefulWidget {
  const AnimatedScreen({super.key});

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AnimatedSplashScreen(
            duration: 3000,
            splash: Lottie.asset("assets/jsons/Animation - 1725461685907.json"),
            nextScreen: const HomeScreen(),
            nextRoute: AppStrings.spalshRoute,
            splashTransition: SplashTransition.rotationTransition,
            pageTransitionType: PageTransitionType.bottomToTop,
            backgroundColor: Colors.white));
  }
}
