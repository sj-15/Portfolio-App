import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/Utility/projectpage.dart';
import 'package:portfolio/aboutsc.dart';
import 'package:portfolio/achievements.dart';
import 'package:portfolio/contact.dart';
import 'package:portfolio/education.dart';
import 'package:portfolio/experience.dart';
import 'package:portfolio/homepage.dart';
import 'package:portfolio/projects.dart';
import 'package:portfolio/responsibility.dart';
import 'package:portfolio/skills.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

import '../aboutmepage.dart';
import '../achievementspage.dart';
import '../contactpage.dart';
import '../educationpage.dart';
import '../experiencespage.dart';
import '../responsibilitiespage.dart';
import '../skillspage.dart';

class SlidingSheetPage extends StatefulWidget {
  const SlidingSheetPage({Key? key, required this.val, required this.text})
      : super(key: key);

  final num val;
  final String text;

  @override
  State<SlidingSheetPage> createState() => _SlidingSheetPageState();
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

class _SlidingSheetPageState extends State<SlidingSheetPage> {
  myAchiev(number, type) {
    return Row(
      children: [
        Text(
          number,
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
    return Card(
      shadowColor: const Color.fromARGB(255, 20, 20, 20),
      elevation: 20,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      color: const Color.fromARGB(255, 20, 20, 20),
      child: SizedBox(
        width: 110,
        height: MediaQuery.of(context).size.height * 0.14,
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context, _createRoute(rout));
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 20, 20, 20),
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
                  fontSize: 14,
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
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.text,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            const Text(
              "<Sourav/>",
              style: TextStyle(
                  color: Colors.white, fontFamily: "Dancing", fontSize: 20),
            ),
          ],
        ),
      ),
      body: SlidingSheet(
        elevation: 20,
        cornerRadius: 50,
        snapSpec: const SnapSpec(
          // Enable snapping. This is true by default.
          snap: true,
          // Set custom snapping points.
          snappings: [0.1, 0.7, 1],
          // Define to what the snappings relate to. In this case,
          // the total available space that the sheet can expand to.
          positioning: SnapPositioning.relativeToAvailableSpace,
        ),
        // The body widget will be displayed under the SlidingSheet
        // and a parallax effect can be applied to it.
        body: Stack(
          children: [
            if (widget.val == 1)
              const MyHome()
            else if (widget.val == 2)
              aboutmepage(context)
            else if (widget.val == 3)
              const ProjectsPage()
            else if (widget.val == 4)
              const SkillPage()
            else if (widget.val == 5)
              achievementspage()
            else if (widget.val == 6)
              responsibilitiespage()
            else if (widget.val == 7)
              experiencespage(context)
            else if (widget.val == 8)
              educationpage()
            else if (widget.val == 9)
              contactpage(context)
          ],
        ),
        builder: (context, state) {
          // This is the content of the sheet that will get
          // scrolled, if the content is bigger than the available
          // height of the sheet.
          return Column(
            children: [
              const Text(
                '----',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
                margin: const EdgeInsets.all(8),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          myAchiev('15', ' Projects'),
                          myAchiev('5', '⭐ Corder'),
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
                height: MediaQuery.of(context).size.height * 0.5,
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
