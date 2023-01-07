import 'dart:ui';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  myAchiev(num, type) {
    return Row(
      children: [
        Text(
          num,
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 10),
          child: Text(type),
        ),
      ],
    );
  }

  mySpec(icon, text) {
    return Container(
      width: 105,
      height: 115,
      child: Card(
        margin: EdgeInsets.all(0),
        color: Color(0xff252525),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: Colors.white,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                text,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SlidingSheet(
        elevation: 8,
        cornerRadius: 50,
        snapSpec: const SnapSpec(
          // Enable snapping. This is true by default.
          snap: true,
          // Set custom snapping points.
          snappings: [0.4, 0.7, 1.0],
          // Define to what the snappings relate to. In this case,
          // the total available space that the sheet can expand to.
          positioning: SnapPositioning.relativeToAvailableSpace,
        ),
        // The body widget will be displayed under the SlidingSheet
        // and a parallax effect can be applied to it.
        body: Container(
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.only(left: 11, top: 35),
                child: ShaderMask(
                  shaderCallback: (rect) {
                    return LinearGradient(
                            begin: Alignment.center,
                            end: Alignment.bottomCenter,
                            colors: [Colors.black, Colors.transparent])
                        .createShader(
                            Rect.fromLTRB(0, 0, rect.width, rect.height));
                  },
                  blendMode: BlendMode.dstIn,
                  child: Image.asset(
                    'assets/img1.png',
                    height: 400,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.50),
                child: Column(
                  children: [
                    Text(
                      'Sourav Jana',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    AnimatedTextKit(
                      animatedTexts: [
                        TyperAnimatedText(
                          'Competetive Programmer',
                          textStyle:
                              TextStyle(color: Colors.white, fontSize: 20),
                          speed: const Duration(milliseconds: 100),
                        ),
                        TyperAnimatedText(
                          'Fullstack Developer',
                          textStyle:
                              TextStyle(color: Colors.white, fontSize: 20),
                          speed: const Duration(milliseconds: 100),
                        ),
                      ],
                      repeatForever: true,
                      isRepeatingAnimation: true,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        builder: (context, state) {
          // This is the content of the sheet that will get
          // scrolled, if the content is bigger than the available
          // height of the sheet.
          return Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 30),
            height: 500,
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      myAchiev('15', ' Projects'),
                      myAchiev('20', ' Clients'),
                      myAchiev('150', ' Messages'),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Specialized In',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          mySpec(FontAwesomeIcons.code, 'CP'),
                          mySpec(FontAwesomeIcons.android, 'Android'),
                          mySpec(FontAwesomeIcons.database, 'Database'),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          mySpec(FontAwesomeIcons.java, 'Java'),
                          mySpec(FontAwesomeIcons.c, 'C'),
                          mySpec(FontAwesomeIcons.python, 'Python'),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          mySpec(FontAwesomeIcons.docker, 'Docker'),
                          mySpec(FontAwesomeIcons.linux, 'Linux'),
                          mySpec(FontAwesomeIcons.github, 'Github'),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
