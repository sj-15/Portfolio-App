import 'package:flutter/material.dart';
import 'package:portfolio/Utility/components/logos.dart';
import 'package:portfolio/Utility/components/quotes.dart';

Widget experiencespage(context) {
  final size = MediaQuery.of(context).size;
  return Container(
    padding: const EdgeInsets.all(18),
    child: Column(
      children: [
        const Text(
          'Still now I don\'t have any hands on work experience.\n',
          style: TextStyle(
            color: Colors.white,
            fontFamily: "Texturina",
            fontSize: 18,
          ),
        ),
        const Text(
          'Currently, I am in 3rd year at college. In the course of these few years during graduation, we have been taught a lot of things. But the practical application of my knowledge will help me know how much have I actually learned.\n',
          style: TextStyle(
            color: Colors.white,
            fontFamily: "Texturina",
            fontSize: 18,
          ),
        ),
        const Text(
          'I can showcase my talent and prove my skills here, while in turn, I can learn how this industry functions in and out. Thank You!',
          style: TextStyle(
            color: Colors.white,
            fontFamily: "Texturina",
            fontSize: 18,
          ),
        ),
        SizedBox(
          height: size.height * 0.02,
        ),
        quotescard(
            context,
            '"Experience is something I always think I have until I get more of it."',
            'Burton Hillis'),
        SizedBox(height: size.height * 0.03),
        logofield(),
      ],
    ),
  );
}
