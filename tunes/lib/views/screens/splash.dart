import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:tunes/constants/strings.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      mounted
          ? Navigator.pushReplacementNamed(context, AppStrings.homeRoute)
          : null;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset("assets/jsons/Animation - 1725461685907.json")
            ],
          ),
        ),
      ),
    ));
  }
}
