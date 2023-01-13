import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/aboutsc.dart';
import 'package:portfolio/achievements.dart';
import 'package:portfolio/contact.dart';
import 'package:portfolio/education.dart';
import 'package:portfolio/experience.dart';
import 'package:portfolio/projects.dart';
import 'package:portfolio/responsibility.dart';
import 'package:portfolio/skills.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

Route _createRoute(rout) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => rout,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

class _MyHomeState extends State<MyHome> {
  myAchiev(num, type) {
    return Row(
      children: [
        Text(
          num,
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 10),
          child: Text(type),
        ),
      ],
    );
  }

  mySpec(icon, text, rout) {
    return SizedBox(
      width: 120,
      height: 115,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(context, _createRoute(rout));
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xff252525),
          padding: const EdgeInsets.symmetric(vertical: 20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Colors.white,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            )
          ],
        ),
      ),
      // ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
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
        body: Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 11, top: 35),
              child: ShaderMask(
                shaderCallback: (rect) {
                  return const LinearGradient(
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
                  top: MediaQuery.of(context).size.height * 0.49),
              child: Column(
                children: [
                  const Text(
                    'Sourav Jana',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Texturina"),
                  ),
                  AnimatedTextKit(
                    animatedTexts: [
                      TyperAnimatedText(
                        'Competetive Programmer',
                        textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: "Chakra"),
                        speed: const Duration(milliseconds: 50),
                      ),
                      TyperAnimatedText(
                        'Fullstack Developer',
                        textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: "Chakra"),
                        speed: const Duration(milliseconds: 50),
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
        builder: (context, state) {
          // This is the content of the sheet that will get
          // scrolled, if the content is bigger than the available
          // height of the sheet.
          return Column(
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                margin: const EdgeInsets.all(8),
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
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'More Info',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ]),
              ),
              Container(
                margin: const EdgeInsets.only(left: 8, right: 8),
                height: 400,
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              mySpec(FontAwesomeIcons.house, 'Home',
                                  const MyHome()),
                              mySpec(FontAwesomeIcons.info, 'About Me',
                                  const AboutMe()),
                              mySpec(FontAwesomeIcons.diagramProject,
                                  'Projects', const MyProject()),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              mySpec(FontAwesomeIcons.laptopCode, 'Skills',
                                  const MySkills()),
                              mySpec(FontAwesomeIcons.trophy, 'Achievements',
                                  const MyAchievements()),
                              mySpec(FontAwesomeIcons.criticalRole,
                                  'Responsibility', const MyResponsibilities()),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              mySpec(FontAwesomeIcons.desktop, 'Experiences',
                                  const MyExperience()),
                              mySpec(FontAwesomeIcons.userGraduate, 'Education',
                                  const MyEducation()),
                              mySpec(FontAwesomeIcons.solidCommentDots,
                                  'Contact Me', const MyContact()),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
