import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AboutMe extends StatefulWidget {
  const AboutMe({super.key});

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          'About Me',
        ),
        foregroundColor: Colors.white,
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 80, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Hello, I\'m',
                      style: TextStyle(color: Colors.white),
                    ),
                    AnimatedTextKit(
                      animatedTexts: [
                        TypewriterAnimatedText(
                          'Sourav Jana',
                          textStyle: const TextStyle(
                              color: Colors.white, fontSize: 25),
                          speed: const Duration(milliseconds: 100),
                        ),
                      ],
                      isRepeatingAnimation: true,
                      repeatForever: true,
                    ),
                  ],
                ),
                const SizedBox(
                  width: 40,
                ),
                const CircleAvatar(
                  radius: 73,
                  backgroundColor: Color.fromRGBO(255, 255, 255, 1),
                  child: CircleAvatar(
                    backgroundImage: AssetImage(
                      'assets/img2.png',
                    ),
                    radius: 70,
                    backgroundColor: Colors.black,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 7,
            ),
            Column(
              children: const [
                Text(
                  'Pursuing B. Tech in Computer Science & Engineering from Dr B. C. Roy Engineering College, Durgapur.',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'I\'m the vice-president of iCoders\' the official tech club of our college.',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Have hands on Full Stack Development and Competitive Coding.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'I love solving Puzzels, like Sudoku, Rubix Cube, etc. and listening to Music.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 25,
                )
              ],
            ),
            Container(
              padding: const EdgeInsets.all(4),
              alignment: Alignment.center,
              height: 120,
              decoration: BoxDecoration(
                border: Border.all(width: 3, color: Colors.white),
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 5,
                    color: Color.fromARGB(255, 88, 88, 88),
                    offset: Offset(1, 7),
                  ),
                ],
              ),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const [
                      Text(
                        '"I am who I am today because of the choices I made yesterday."',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 4, 4, 4)),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        '— Eleanor Roosevelt, First Lady of the U.S.',
                        style: TextStyle(
                            fontSize: 12, color: Color.fromARGB(255, 0, 0, 0)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    FontAwesomeIcons.linkedin,
                    color: Colors.white,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    FontAwesomeIcons.github,
                    color: Colors.white,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    FontAwesomeIcons.instagram,
                    color: Colors.white,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
