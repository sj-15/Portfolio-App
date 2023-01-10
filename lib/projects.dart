import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyProject extends StatefulWidget {
  const MyProject({super.key});

  @override
  State<MyProject> createState() => _MyProjectState();
}

class _MyProjectState extends State<MyProject> {
  myPro(title, skill, des) {
    return Container(
      height: 220,
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: BoxDecoration(
        border: Border.all(width: 3, color: Colors.white),
        borderRadius: BorderRadius.circular(25),
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
          borderRadius: BorderRadius.circular(20),
        ),
        color: const Color(0xff262628),
        child: Container(
          padding: const EdgeInsets.only(left: 12, right: 12, top: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                title,
                style: const TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontFamily: "Chakra",
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              Text(
                des,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontFamily: "Texturina",
                ),
              ),
              // const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    skill,
                    style: const TextStyle(
                      fontSize: 15,
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
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  var selectedindex;

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
            'Projects',
          ),
        ),
        foregroundColor: Colors.white,
      ),

      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 5),
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              myPro('PORTFOLIO APP', 'Flutter',
                  'Here, I showcase my Skills, Experience, Projects, Acievments and giving details About Me and my Contacts.'),
              const SizedBox(
                height: 15,
              ),
              myPro('PORTFOLIO APP', 'Flutter',
                  'Here, I showcase my Skills, Experience, Projects, Acievments and giving details About Me and my Contacts.'),
              const SizedBox(
                height: 15,
              ),
              myPro('PORTFOLIO APP', 'Flutter',
                  'Here, I showcase my Skills, Experience, Projects, Acievments and giving details About Me and my Contacts.'),
              const SizedBox(
                height: 15,
              ),
              myPro('PORTFOLIO APP', 'Flutter',
                  'Here, I showcase my Skills, Experience, Projects, Acievments and giving details About Me and my Contacts.'),
            ],
          ),
        ),
      ),
    );
  }
}
