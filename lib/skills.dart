import 'package:flutter/material.dart';
import 'package:portfolio/Utility/sliding_window.dart';

class MySkills extends StatefulWidget {
  const MySkills({super.key});

  @override
  State<MySkills> createState() => _MySkillsState();
}

class _MySkillsState extends State<MySkills> {
  @override
  Widget build(BuildContext context) {
    return const SlidingSheetPage(val: 4, text: 'Skills');
  }
}
