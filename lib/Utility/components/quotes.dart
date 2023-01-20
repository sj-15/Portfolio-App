import 'package:flutter/material.dart';

Widget quotescard(context, text, name) {
  return Container(
    padding: const EdgeInsets.all(4),
    alignment: Alignment.center,
    height: MediaQuery.of(context).size.height * 0.18,
    decoration: BoxDecoration(
      border: Border.all(width: 3, color: Colors.white),
      borderRadius: BorderRadius.circular(20),
      boxShadow: const [
        BoxShadow(
          blurRadius: 5,
          color: Color.fromARGB(255, 88, 88, 88),
          offset: Offset(1, 7),
        ),
      ],
    ),
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 4, 4, 4),
                fontFamily: "Satisfy",
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              name,
              style: const TextStyle(
                fontSize: 13,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
