import 'package:flutter/material.dart';
import 'package:portfolio/aboutsc.dart';
import 'package:portfolio/homepage.dart';
import 'package:portfolio/projects.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(fontFamily: 'Soho'),
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
      routes: {
        '/project': (context) => const MyProject(),
        '/': (context) => const MyHome(),
        '/about': (context) => const AboutMe(),
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
/*
1. Home
2. About Me
3. Skills
4. Projects
7. Experience
8. Education
5. Achievments
6. Contact Me
9. Responsibilities
*/
