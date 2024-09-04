import 'package:flutter/material.dart';
import 'package:tunes/constants/strings.dart';
import 'package:tunes/views/screens/animated.dart';
import 'package:tunes/views/screens/home.dart';
import 'package:tunes/views/screens/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
 
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: AppStrings.animatedRoute,
      
     routes: {
      
      AppStrings.homeRoute:(context)=>const HomeScreen(),
      AppStrings.spalshRoute:(context)=>const SplashScreen(),
      AppStrings.animatedRoute:(context)=>const AnimatedScreen(),

     },
     
    );
  }
}

