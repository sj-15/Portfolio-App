import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

Widget logofield() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      IconButton(
        onPressed: () async {
          const url = 'https://www.linkedin.com/in/sourav-jana15/';
          if (await launch(url)) {
            await canLaunch(url);
          } else {
            throw "Could not launch the url";
          }
        },
        icon: const Icon(
          FontAwesomeIcons.linkedin,
          color: Colors.white,
        ),
      ),
      IconButton(
        onPressed: () async {
          const url = 'https://github.com/sj-15';
          if (await launch(url)) {
            await canLaunch(url);
          } else {
            throw "Could not launch the url";
          }
        },
        icon: const Icon(
          FontAwesomeIcons.github,
          color: Colors.white,
        ),
      ),
      IconButton(
        onPressed: () async {
          const url =
              'https://drive.google.com/file/d/1sbM-oOdsW8E-hF5vOQoMSksf4LRqM8wX/view?usp=share_link';
          if (await launch(url)) {
            await canLaunch(url);
          } else {
            throw "Could not launch the url";
          }
        },
        icon: const Icon(
          FontAwesomeIcons.filePdf,
          color: Colors.white,
        ),
      ),
    ],
  );
}
