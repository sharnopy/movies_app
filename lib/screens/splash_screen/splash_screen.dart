import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:newmovie/lay_outs/first_screen.dart';

class SplashScreen extends StatefulWidget {

  static const String routeName = "SplashScreen";

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: 'assets/images/moviessplash.png',
      nextScreen: FirstScreen(),
      splashTransition: SplashTransition.rotationTransition,
      backgroundColor: Color(0xFF121312),
    );
  }
}