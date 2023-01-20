import 'package:flutter/material.dart';

Widget contactfield(context, text, icon) {
  final size = MediaQuery.of(context).size;
  return Padding(
    padding: EdgeInsets.only(left: size.width * 0.3),
    child: Row(
      children: [
        Icon(
          icon,
          color: Colors.white,
          size: 15,
        ),
        SizedBox(
          width: size.width * 0.07,
        ),
        Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 15,
          ),
        ),
      ],
    ),
  );
}

Widget messagefield(title) {
  return TextField(
    cursorColor: Colors.black,
    decoration: InputDecoration(
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: const BorderSide(color: Colors.black),
      ),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.black),
      ),
      labelText: title,
      labelStyle: const TextStyle(color: Colors.black),
    ),
  );
}
