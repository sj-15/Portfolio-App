import 'package:flutter/material.dart';
import 'package:portfolio/menu/contact.dart';
import 'package:portfolio/menu/education.dart';
import 'package:portfolio/menu/experience.dart';
import 'package:portfolio/menu/homepage.dart';
import 'package:portfolio/menu/projects.dart';
import 'package:portfolio/menu/responsibility.dart';
import 'package:portfolio/menu/skills.dart';

import 'menu/aboutsc.dart';
import 'menu/achievements.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(fontFamily: 'Soho'),
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const MyHome(),
        '/about': (context) => const AboutMe(),
        '/project': (context) => const MyProject(),
        '/skills': (context) => const MySkills(),
        '/achievements': (context) => const MyAchievements(),
        '/responsibility': (context) => const MyResponsibilities(),
        '/experience': (context) => const MyExperience(),
        '/education': (context) => const MyEducation(),
        '/contact': (context) => const MyContact(),
      },
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
