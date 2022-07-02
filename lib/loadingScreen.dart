import 'dart:async';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'weclomescreen.dart';

class loadingScreen extends StatefulWidget {
  const loadingScreen({Key? key}) : super(key: key);

  @override
  State<loadingScreen> createState() => _loadingScreenState();
}

class _loadingScreenState extends State<loadingScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => const welcomescreen())));
  }

  Widget build(BuildContext context) {
    return Center(
        child: SizedBox(
      width: 300.0,
      child: DefaultTextStyle(
        style: const TextStyle(
          fontSize: 40.0,
          fontFamily: 'AlexBrush',
          color: Colors.deepOrangeAccent,
        ),
        child: AnimatedTextKit(
            totalRepeatCount: 1,
            displayFullTextOnTap: true,
            animatedTexts: [
              TyperAnimatedText('"Have a better Sleep"',
                  speed: const Duration(milliseconds: 90)),
            ]),
      ),
    ));
  }
}
