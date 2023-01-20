import 'package:flutter/material.dart';
import 'package:portfolio/Utility/components/sliding_window.dart';

class MyAchievements extends StatefulWidget {
  const MyAchievements({super.key});

  @override
  State<MyAchievements> createState() => _MyAchievementsState();
}

class _MyAchievementsState extends State<MyAchievements> {
  @override
  Widget build(BuildContext context) {
    return const SlidingSheetPage(val: 5, text: 'Achievements');
  }
}
