import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget logofield() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      IconButton(
        onPressed: () async {},
        icon: const Icon(
          FontAwesomeIcons.linkedin,
          color: Colors.white,
        ),
      ),
      IconButton(
        onPressed: () {},
        icon: const Icon(
          FontAwesomeIcons.github,
          color: Colors.white,
        ),
      ),
      IconButton(
        onPressed: () {},
        icon: const Icon(
          FontAwesomeIcons.filePdf,
          color: Colors.white,
        ),
      ),
    ],
  );
}
