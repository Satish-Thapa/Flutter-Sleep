import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

import 'package:sleep/weclomescreen.dart';
import 'weclomescreen.dart';

class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: 'images/rain.jpg',
      nextScreen: const welcomescreen(),
      splashTransition: SplashTransition.rotationTransition,
    );
  }
}
