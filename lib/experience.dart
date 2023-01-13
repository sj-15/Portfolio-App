import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyExperience extends StatefulWidget {
  const MyExperience({super.key});

  @override
  State<MyExperience> createState() => _MyExperienceState();
}

class _MyExperienceState extends State<MyExperience> {
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
            'Experiences',
          ),
        ),
        foregroundColor: Colors.white,
      ),
    );
  }
}
