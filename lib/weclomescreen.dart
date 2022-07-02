import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:sleep/soundScreen.dart';

class welcomescreen extends StatefulWidget {
  const welcomescreen({Key? key}) : super(key: key);

  @override
  State<welcomescreen> createState() => _welcomescreenState();
}

class _welcomescreenState extends State<welcomescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: const Color(0x44000000),
          elevation: 0,
          title: const Text(
            'Sleep',
            style: TextStyle(
                fontFamily: 'Pacifico',
                color: Colors.deepOrangeAccent,
                fontSize: 30),
          ),
        ),
        body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/back.jpg"), fit: BoxFit.cover),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: ListView(
                    children: [
                      text(
                        head: "Rain",
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          sound(
                            pic: "rain",
                            topic: "Heavy Rain",
                          ),
                          sound(
                            pic: "forest",
                            topic: "Forest Rain",
                          ),
                        ],
                      ),
                      const space(),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          sound(
                            pic: "drive",
                            topic: "Window Rain",
                          ),
                          sound(
                            pic: "thunder",
                            topic: "Thunder Rain",
                          )
                        ],
                      ),
                      const space(),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          sound(
                            pic: "nature",
                            topic: "Lake Rain",
                          ),
                          sound(
                            pic: "fire",
                            topic: "FireWood Rain",
                          ),
                        ],
                      ),
                      text(head: "Noise"),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          sound(
                            pic: "white",
                            topic: "White Noise",
                          ),
                          sound(
                            pic: "browm",
                            topic: "Brown Noise",
                          )
                        ],
                      ),
                      const space(),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          sound(
                            pic: "pink",
                            topic: "Pink Noise",
                          ),
                          sound(pic: "black", topic: "Black Noise")
                        ],
                      ),
                      const space(),
                      Container(
                        height: 30,
                        color: const Color(0x44939393),
                        alignment: AlignmentDirectional.center,
                        child: Text(
                          "\u00a9 By -meet_satish10",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )));
  }
}

class text extends StatelessWidget {
  text({required this.head});
  final String head;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(32, 30, 0, 30),
      child: Text(
        head,
        style: const TextStyle(
          letterSpacing: 6,
          fontWeight: FontWeight.bold,
          fontFamily: 'ostrich',
          fontSize: 40,
          color: Colors.white,
        ),
      ),
    );
  }
}

class space extends StatelessWidget {
  const space({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 50,
    );
  }
}

class sound extends StatelessWidget {
  sound({
    required this.pic,
    required this.topic,
    this.height = 150,
    this.width = 150,
    this.blurRadius = 10.0,
    this.spreadRadius = 2,
    this.fontSize = 19,
    this.lineheight = 30,
  });
  final String pic;
  final String topic;
  double height;
  double width;
  double blurRadius;
  double spreadRadius;
  double fontSize;
  double lineheight;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => soundScreen(
                      pic: pic,
                      topic: topic,
                    )));
      },
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/$pic.jpg"),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.white,
                blurRadius: blurRadius,
                spreadRadius: spreadRadius,
              )
            ]),
        child: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            Container(
              alignment: AlignmentDirectional.center,
              height: lineheight,
              width: width,
              color: const Color(0x44232222),
              child: Text(
                topic,
                style: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: fontSize,
                  letterSpacing: 3,
                  // fontWeight: FontWeight.bold,
                  fontFamily: "ostrich",
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
