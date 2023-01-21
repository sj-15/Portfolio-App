import 'package:flutter/material.dart';

import '../Utility/components/sliding_window.dart';

class MyEducation extends StatefulWidget {
  const MyEducation({super.key});

  @override
  State<MyEducation> createState() => _MyEducationState();
}

class _MyEducationState extends State<MyEducation> {
  @override
  Widget build(BuildContext context) {
    return const SlidingSheetPage(val: 8, text: 'Education');
  }
}
