import 'package:flutter/material.dart';

class SkillPage extends StatefulWidget {
  const SkillPage({Key? key}) : super(key: key);

  @override
  State<SkillPage> createState() => _SkillPageState();
}

class _SkillPageState extends State<SkillPage> {
  projetCard(lang, title, description, img) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.9,
      height: size.height * 0.25,
      child: Card(
        elevation: 50,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        color: const Color.fromARGB(255, 87, 87, 87),
        child: Container(
          margin: const EdgeInsets.only(left: 20, right: 10),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                img,
                height: size.height * 0.10,
                width: size.width * 0.25,
                alignment: Alignment.topCenter,
              ),
              Text(
                lang,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                title,
                style: const TextStyle(
                    color: Color.fromARGB(255, 150, 150, 150),
                    fontSize: 15,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 3,
              ),
              Text(
                description,
                style: const TextStyle(
                    color: Colors.white, fontSize: 20, fontFamily: 'Chakra'),
              ),
              const SizedBox(
                height: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xff1e1e1e),
      backgroundColor: Colors.black,
      body: Container(
        margin: const EdgeInsets.only(bottom: 20, top: 10),
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            projetCard(
                'Full Stack Development',
                '1y+ hands on project experience using',
                'Flutter, Node.Js, Express.Js',
                'assets/appd.png'),
            projetCard('Programming Languages', '2y+ of experience on',
                'C++, JAVA, Python', 'assets/cse.png'),
            projetCard('Tools', 'that I\'ve use for building projects',
                'MySQL, Firebase, Github, Linux', 'assets/database.png'),
          ],
        ),
      ),
    );
  }
}
