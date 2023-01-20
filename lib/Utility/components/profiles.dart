import 'package:flutter/material.dart';

Widget profilesfield(context, title, des, link) {
  final size = MediaQuery.of(context).size;
  return Card(
    color: Colors.black54,
    elevation: 20,
    shadowColor: Colors.white54,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(5),
    ),
    child: SizedBox(
      height: size.height * 0.07,
      width: size.width * 0.9,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              des,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.link),
              color: Colors.white,
            ),
          ],
        ),
      ),
    ),
  );
}
