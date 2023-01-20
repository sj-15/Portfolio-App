import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/Utility/components/message.dart';

Widget contactpage(context) {
  final size = MediaQuery.of(context).size;
  return Column(
    children: [
      SizedBox(
        height: size.height * 0.3,
        child: Column(
          children: [
            const CircleAvatar(
              radius: 45,
              backgroundColor: Color.fromRGBO(255, 255, 255, 1),
              child: CircleAvatar(
                radius: 42,
                backgroundImage: AssetImage(
                  'assets/img2.png',
                ),
                backgroundColor: Colors.black,
              ),
            ),
            const Text(
              'Sourav Jana',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: "Texturina",
              ),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            contactfield(
                context, 'West Bengal, India', FontAwesomeIcons.locationDot),
            SizedBox(
              height: size.height * 0.01,
            ),
            contactfield(context, '+91 8436721986', FontAwesomeIcons.phone),
            SizedBox(
              height: size.height * 0.01,
            ),
            contactfield(
                context, 'sj15sourav@gmail.com', FontAwesomeIcons.message),
            SizedBox(
              height: size.height * 0.01,
            ),
            contactfield(
                context, '/sourav-jana15', FontAwesomeIcons.linkedinIn),
          ],
        ),
      ),
      Expanded(
        child: SingleChildScrollView(
          child: Container(
            height: size.height * 1,
            width: double.infinity,
            color: Colors.white,
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Send a message...',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                messagefield('Name'),
                SizedBox(
                  height: size.height * 0.02,
                ),
                messagefield('Email'),
                SizedBox(
                  height: size.height * 0.02,
                ),
                messagefield('Subject'),
                SizedBox(
                  height: size.height * 0.02,
                ),
                TextField(
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: const BorderSide(color: Colors.black),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    labelText: 'Message',
                    labelStyle: const TextStyle(color: Colors.black),
                  ),
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
                Center(
                  child: CircleAvatar(
                    radius: 34,
                    backgroundColor: Colors.black,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: ClipOval(
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.send,
                            color: Colors.white,
                            size: 36,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ],
  );
}
