import 'package:flutter/material.dart';

import 'Utility/components/sliding_window.dart';

class MyProject extends StatefulWidget {
  const MyProject({super.key});

  @override
  State<MyProject> createState() => _MyProjectState();
}

class _MyProjectState extends State<MyProject> {
  @override
  Widget build(BuildContext context) {
    return const SlidingSheetPage(val: 3, text: "Projects");
  }
}
