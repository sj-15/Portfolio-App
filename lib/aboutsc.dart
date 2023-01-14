import 'package:flutter/material.dart';

import 'Utility/sliding_window.dart';

const Color backgroundColor = Color.fromARGB(255, 0, 0, 0);

class AboutMe extends StatefulWidget {
  const AboutMe({super.key});

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  final Duration duration = const Duration(milliseconds: 300);
  @override
  Widget build(BuildContext context) {
    return const SlidingSheetPage(
      val: 2,
      text: "About Me",
    );
  }
}
