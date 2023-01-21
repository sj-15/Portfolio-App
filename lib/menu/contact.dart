import 'package:flutter/material.dart';
import 'package:portfolio/Utility/components/sliding_window.dart';

class MyContact extends StatefulWidget {
  const MyContact({super.key});

  @override
  State<MyContact> createState() => _MyContactState();
}

class _MyContactState extends State<MyContact> {
  @override
  Widget build(BuildContext context) {
    return const SlidingSheetPage(val: 9, text: 'Contact Me');
  }
}
