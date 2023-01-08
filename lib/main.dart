import 'package:flutter/material.dart';
import 'package:portfolio/aboutsc.dart';
import 'package:portfolio/homepage.dart';
import 'package:portfolio/projects.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(fontFamily: 'Soho'),
      initialRoute: '/about',
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
