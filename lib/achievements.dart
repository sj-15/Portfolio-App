import 'package:flutter/material.dart';

class MyAchievements extends StatefulWidget {
  const MyAchievements({super.key});

  @override
  State<MyAchievements> createState() => _MyAchievementsState();
}

class _MyAchievementsState extends State<MyAchievements> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      // extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xff262628),
        automaticallyImplyLeading: true,
        title: Container(
          alignment: Alignment.topLeft,
          child: const Text(
            'Achievements',
          ),
        ),
        foregroundColor: Colors.white,
      ),
    );
  }
}
