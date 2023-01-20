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
