import 'package:flutter/material.dart';

import 'loadingScreen.dart';

void main() async {
  runApp(sleep());
}

class sleep extends StatefulWidget {
  @override
  State<sleep> createState() => _sleepState();
}

class _sleepState extends State<sleep> {
  @override
  Widget build(BuildContext context) {
    precacheImage(
        const AssetImage("images/back.jpg"), context); //image pailai load garna
    return const MaterialApp(
      home: loadingScreen(),
    );
  }
}
