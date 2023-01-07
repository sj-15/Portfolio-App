import 'package:flutter/material.dart';
import 'package:portfolio/homepage.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: 'homePage',
    debugShowCheckedModeBanner: false,
    routes: {
      'homePage': ((context) => MyHome()),
    },
  ));
}
