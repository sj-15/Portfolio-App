import 'package:flutter/material.dart';

import 'Utility/sliding_window.dart';

class MyResponsibilities extends StatefulWidget {
  const MyResponsibilities({super.key});

  @override
  State<MyResponsibilities> createState() => _MyResponsibilitiesState();
}

class _MyResponsibilitiesState extends State<MyResponsibilities> {
  @override
  Widget build(BuildContext context) {
    return const SlidingSheetPage(val: 6, text: 'Responsibilities');
  }
}
