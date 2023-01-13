import 'package:flutter/material.dart';

class MyResponsibilities extends StatefulWidget {
  const MyResponsibilities({super.key});

  @override
  State<MyResponsibilities> createState() => _MyResponsibilitiesState();
}

class _MyResponsibilitiesState extends State<MyResponsibilities> {
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
            'Responsibilities',
          ),
        ),
        foregroundColor: Colors.white,
      ),
    );
  }
}
