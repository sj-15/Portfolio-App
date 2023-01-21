import 'package:flutter/material.dart';

Widget page(context, index) {
  final itemsTitle = ['Vice-President', 'Co-Ordinator', 'Instructor'];
  final itemsDate = [
    'Apr 2022 - Present',
    'Mar 2022 - Dec 2022',
    'Nov 2021 - Present'
  ];
  final itemsDes = [
    'iCoders\' is the official tech club of Dr. B. C. Roy Engineering College.',
    'CODENGERS is the weekly coding contest organized by iCoders\'.',
    'Teaching and learning Data Structures and Algorithms to interested juniors at iCoders\'.'
  ];
  final size = MediaQuery.of(context).size;

  return Container(
    padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/logo.png'),
        Text(
          itemsTitle[index],
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w700,
            fontSize: 30,
          ),
        ),
        Text(
          itemsDate[index],
          style: const TextStyle(
            color: Colors.white54,
          ),
        ),
        Text(
          itemsDes[index],
          style: const TextStyle(
            color: Colors.white70,
            fontWeight: FontWeight.w400,
            fontSize: 24,
          ),
        ),
      ],
    ),
  );
}
