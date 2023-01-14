import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'Utility/sliding_window.dart';

class MyExperience extends StatefulWidget {
  const MyExperience({super.key});

  @override
  State<MyExperience> createState() => _MyExperienceState();
}

class _MyExperienceState extends State<MyExperience> {
  @override
  Widget build(BuildContext context) {
    return const SlidingSheetPage(val: 7, text: 'Experiences');
  }
}
