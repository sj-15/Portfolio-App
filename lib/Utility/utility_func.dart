import 'package:flutter/material.dart';
import 'package:portfolio/aboutsc.dart';
import 'package:portfolio/achievements.dart';
import 'package:portfolio/contact.dart';
import 'package:portfolio/education.dart';
import 'package:portfolio/experience.dart';
import 'package:portfolio/homepage.dart';
import 'package:portfolio/projects.dart';
import 'package:portfolio/responsibility.dart';
import 'package:portfolio/skills.dart';

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

Widget menu(context, Animation<double> menuScaleAnimation,
    Animation<Offset> slideAnimation) {
  return SlideTransition(
    position: slideAnimation,
    child: ScaleTransition(
      scale: menuScaleAnimation,
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0, top: 48),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              textbuttons(context),
            ],
          ),
        ),
      ),
    ),
  );
}

Widget textbuttons(context) {
  return Container(
    padding: const EdgeInsets.only(top: 18),
    child: Column(
      children: [
        const CircleAvatar(
          radius: 53,
          backgroundColor: Color.fromRGBO(255, 255, 255, 1),
          child: CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage(
              'assets/img2.png',
            ),
            backgroundColor: Colors.black,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        TextButton(
          onPressed: () {
            Navigator.push(context, _createRoute(const MyHome()));
          },
          style: TextButton.styleFrom(
            backgroundColor: Colors.transparent,
          ),
          child: const Text(
            "Home",
            style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255), fontSize: 20),
          ),
        ),
        // const SizedBox(height: 3),
        TextButton(
          onPressed: () {
            Navigator.push(context, _createRoute(const AboutMe()));
          },
          style: TextButton.styleFrom(
            backgroundColor: Colors.transparent,
          ),
          child: const Text("About Me",
              style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255), fontSize: 20)),
        ),
        // const SizedBox(height: 3),
        TextButton(
          onPressed: () {
            Navigator.push(context, _createRoute(const MyProject()));
          },
          style: TextButton.styleFrom(
            backgroundColor: Colors.transparent,
          ),
          child: const Text(
            "Projects",
            style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255), fontSize: 20),
          ),
        ),
        // const SizedBox(height: 3),
        TextButton(
          onPressed: () {
            Navigator.push(context, _createRoute(const MySkills()));
          },
          style: TextButton.styleFrom(
            backgroundColor: Colors.transparent,
          ),
          child: const Text(
            "Skills",
            style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255), fontSize: 20),
          ),
        ),
        // const SizedBox(height: 3),
        TextButton(
          onPressed: () {
            Navigator.push(context, _createRoute(const MyAchievements()));
          },
          style: TextButton.styleFrom(
            backgroundColor: Colors.transparent,
          ),
          child: const Text(
            "Achievments",
            style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255), fontSize: 20),
          ),
        ),
        // const SizedBox(height: 3),
        TextButton(
          onPressed: () {
            Navigator.push(context, _createRoute(const MyResponsibilities()));
          },
          style: TextButton.styleFrom(
            backgroundColor: Colors.transparent,
          ),
          child: const Text(
            "Responsibilities",
            style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255), fontSize: 20),
          ),
        ),
        // const SizedBox(height: 3),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              _createRoute(
                const MyExperience(),
              ),
            );
          },
          style: TextButton.styleFrom(
            backgroundColor: Colors.transparent,
          ),
          child: const Text(
            "Experiences",
            style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255), fontSize: 20),
          ),
        ),
        // const SizedBox(height: 3),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              _createRoute(
                const MyEducation(),
              ),
            );
          },
          style: TextButton.styleFrom(
            backgroundColor: Colors.transparent,
          ),
          child: const Text(
            "Education",
            style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255), fontSize: 20),
          ),
        ),
        // const SizedBox(height: 3),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              _createRoute(
                const MyContact(),
              ),
            );
          },
          style: TextButton.styleFrom(
            backgroundColor: Colors.transparent,
          ),
          child: const Text(
            "Contact Me",
            style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255), fontSize: 20),
          ),
        ),
      ],
    ),
  );
}
