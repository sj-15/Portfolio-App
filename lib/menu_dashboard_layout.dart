import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/utility_func.dart';

const Color backgroundColor = Color.fromARGB(255, 0, 0, 0);

class MenuDashboardPage extends StatefulWidget {
  const MenuDashboardPage({super.key});

  @override
  _MenuDashboardPageState createState() => _MenuDashboardPageState();
}

class _MenuDashboardPageState extends State<MenuDashboardPage>
    with SingleTickerProviderStateMixin {
  bool isCollapsed = true;
  late double screenWidth, screenHeight;
  final Duration duration = const Duration(milliseconds: 300);
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  late Animation<double> _menuScaleAnimation;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: duration);
    _scaleAnimation = Tween<double>(begin: 1, end: 0.8).animate(_controller);
    _menuScaleAnimation =
        Tween<double>(begin: 0.5, end: 1).animate(_controller);
    _slideAnimation =
        Tween<Offset>(begin: const Offset(-1, 0), end: const Offset(0, 0))
            .animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    screenHeight = size.height;
    screenWidth = size.width;

    return Scaffold(
      backgroundColor: backgroundColor,
      body: Stack(
        children: <Widget>[
          menu(context, _menuScaleAnimation, _slideAnimation),
          dashboard(context),
        ],
      ),
    );
  }

  Widget dashboard(context) {
    return AnimatedPositioned(
      duration: duration,
      top: 0,
      bottom: 0,
      left: isCollapsed ? 0 : 0.4 * screenWidth,
      right: isCollapsed ? 0 : -0.5 * screenWidth,
      child: ScaleTransition(
        scale: _scaleAnimation,
        child: Material(
          animationDuration: duration,
          borderRadius: const BorderRadius.all(Radius.circular(40)),
          elevation: 8,
          color: backgroundColor,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            physics: const ClampingScrollPhysics(),
            child: Container(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 48),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      InkWell(
                        child: const Icon(Icons.menu, color: Colors.white),
                        onTap: () {
                          setState(() {
                            if (isCollapsed) {
                              _controller.forward();
                            } else {
                              _controller.reverse();
                            }

                            isCollapsed = !isCollapsed;
                          });
                        },
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      const Text(
                        "About Me",
                        style: TextStyle(fontSize: 24, color: Colors.white),
                      ),
                    ],
                  ),
                  aboutmepage(context)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget aboutmepage(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Hello, I\'m',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontFamily: "Lobster",
                  ),
                ),
                AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText(
                      'Sourav Jana',
                      textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontFamily: "Newrock"),
                      speed: const Duration(milliseconds: 100),
                    ),
                  ],
                  isRepeatingAnimation: true,
                  // repeatForever: true,
                ),
              ],
            ),
            const SizedBox(
              width: 40,
            ),
            const CircleAvatar(
              radius: 73,
              backgroundColor: Color.fromRGBO(255, 255, 255, 1),
              child: CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage(
                  'assets/img2.png',
                ),
                backgroundColor: Colors.black,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 7,
        ),
        Column(
          children: const [
            Text(
              'Pursuing B. Tech in Computer Science & Engineering from Dr B. C. Roy Engineering College, Durgapur.',
              style: TextStyle(
                  color: Colors.white, fontSize: 18, fontFamily: "Chakra"),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'I\'m the vice-president of iCoders\' the official tech club of our college.',
              style: TextStyle(
                  color: Colors.white, fontSize: 18, fontFamily: "Chakra"),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Have hands on Full Stack Development and Competitive Coding.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                // fontWeight: FontWeight.bold,
                fontFamily: "Texturina",
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'I love solving Puzzels, like Sudoku, Rubix Cube, etc. and listening to Music.',
              style: TextStyle(
                  color: Colors.white, fontSize: 18, fontFamily: "Chakra"),
            ),
            SizedBox(
              height: 15,
            )
          ],
        ),
        Container(
          padding: const EdgeInsets.all(4),
          alignment: Alignment.center,
          height: 120,
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
                children: const [
                  Text(
                    '" I am who I am today because of the choices I made yesterday."',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 4, 4, 4),
                      fontFamily: "Satisfy",
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    '— Eleanor Roosevelt, First Lady of the U.S.',
                    style: TextStyle(
                        fontSize: 10, color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {},
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
                FontAwesomeIcons.instagram,
                color: Colors.white,
              ),
            ),
          ],
        )
      ],
    );
  }
}
