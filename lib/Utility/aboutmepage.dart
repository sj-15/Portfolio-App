import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'components/quotes.dart';

Widget aboutmepage(context) {
  final size = MediaQuery.of(context).size;
  return Container(
    padding: const EdgeInsets.only(
      left: 16,
      right: 16,
    ),
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
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontFamily: "Lobster",
                  ),
                ),
                AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText(
                      'Sourav Jana',
                      textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontFamily: "Newrock"),
                      speed: const Duration(milliseconds: 100),
                    ),
                  ],
                  isRepeatingAnimation: true,
                  // repeatForever: true,
                ),
              ],
            ),
            SizedBox(
              width: size.width * 0.01,
            ),
            const CircleAvatar(
              radius: 63,
              backgroundColor: Color.fromRGBO(255, 255, 255, 1),
              child: CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage(
                  'assets/img2.png',
                ),
                backgroundColor: Colors.black,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 7,
        ),
        Column(
          children: [
            const Text(
              'Pursuing B. Tech in Computer Science & Engineering from Dr B. C. Roy Engineering College, Durgapur.',
              style: TextStyle(
                  color: Colors.white, fontSize: 18, fontFamily: "Chakra"),
            ),
            SizedBox(
              height: size.height * 0.015,
            ),
            const Text(
              'I\'m the vice-president of iCoders\' the official tech club of our college.',
              style: TextStyle(
                  color: Colors.white, fontSize: 18, fontFamily: "Chakra"),
            ),
            SizedBox(
              height: size.height * 0.015,
            ),
            const Text(
              'Have hands on Full Stack Development and Competitive Coding.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                // fontWeight: FontWeight.bold,
                fontFamily: "Texturina",
              ),
            ),
            SizedBox(
              height: size.height * 0.015,
            ),
            const Text(
              'I love solving Puzzels, like Sudoku, Rubix Cube, etc. and listening to Music.',
              style: TextStyle(
                  color: Colors.white, fontSize: 18, fontFamily: "Chakra"),
            ),
            SizedBox(
              height: size.height * 0.015,
            )
          ],
        ),
        quotescard(
            context,
            '" I am who I am today because of the choices I made yesterday."',
            '— Eleanor Roosevelt, First Lady of the U.S.'),
        SizedBox(
          height: size.height * 0.03,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () async {},
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
  );
}
