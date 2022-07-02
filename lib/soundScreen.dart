import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'weclomescreen.dart';

class soundScreen extends StatefulWidget {
  soundScreen({required this.pic, required this.topic});
  final String pic;
  final String topic;

  @override
  State<soundScreen> createState() => _soundScreenState(pic: pic, topic: topic);
}

class _soundScreenState extends State<soundScreen> {
  _soundScreenState({required this.pic, required this.topic});
  final String pic;
  final String topic;
  double _currentSliderValue = 30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/screen2.jpg"), fit: BoxFit.cover),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 60),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Button(
                      icon: Icons.arrow_back,
                      height: 36,
                      width: 36,
                      colors: Colors.transparent,
                      size: 30,
                      iconColor: Colors.white60,
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    Button(
                        icon: Icons.shield_moon_rounded,
                        height: 36,
                        width: 36,
                        colors: Colors.transparent,
                        size: 35,
                        iconColor: Colors.white60,
                        onTap: () {}),
                  ],
                ),
                sound(
                  pic: pic, //use send data to next screen
                  topic: topic,
                  height: 250,
                  width: 350,
                  blurRadius: 5,
                  spreadRadius: 1,
                  fontSize: 25,
                  lineheight: 250,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Button(
                          icon: Icons.timer,
                          height: 43,
                          width: 43,
                          colors: Colors.transparent,
                          size: 27,
                          iconColor: Colors.white60,
                          onTap: () {}),
                      Button(
                        icon: Icons.play_arrow_rounded,
                        width: 56.0,
                        height: 56.0,
                        colors: Colors.black45,
                        size: 40,
                        iconColor: Colors.white60,
                        onTap: () {
                          print('Hello');
                        },
                      ),
                      Button(
                          icon: Icons.question_mark,
                          height: 43,
                          width: 43,
                          colors: Colors.transparent,
                          size: 27,
                          iconColor: Colors.white60,
                          onTap: () {})
                    ],
                  ),
                ),
                Slider(
                  activeColor: Colors.white,
                  inactiveColor: Colors.white54,
                  thumbColor: Colors.black45,
                  value: _currentSliderValue,
                  max: 100,
                  divisions: 100,
                  onChanged: (double value) {
                    setState(() {
                      _currentSliderValue = value;
                    });
                  },
                ),
              ],
            ),
          )),
    );
  }
}

class Button extends StatelessWidget {
  Button(
      {required this.icon,
      required this.height,
      required this.width,
      required this.colors,
      required this.size,
      required this.iconColor,
      required this.onTap});
  final IconData icon;
  final double height;
  final double width;
  final Color colors;
  final Color iconColor;
  final double size;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 0.0,
      child: Icon(
        icon,
        color: iconColor,
        size: size,
      ),
      onPressed: onTap,
      constraints: BoxConstraints.tightFor(
        width: width,
        height: height,
      ),
      shape: CircleBorder(),
      fillColor: colors,
    );
  }
}
