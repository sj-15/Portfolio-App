import 'package:flutter/material.dart';
import 'package:portfolio/Utility/components/logos.dart';
import 'package:portfolio/Utility/components/quotes.dart';

import 'components/coursecard.dart';
import 'components/projects.dart';

class ProjectsPage extends StatefulWidget {
  const ProjectsPage({super.key});

  @override
  State<ProjectsPage> createState() => _ProjectsPageState();
}

class _ProjectsPageState extends State<ProjectsPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        SafeArea(
          bottom: false,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: size.height * 0.01),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    "My works...",
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: courses
                        .map(
                          (course) => Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: CourseCard(
                              title: course.title,
                              iconSrc: course.iconSrc,
                              color: course.color,
                              description: course.description,
                              tools: course.tools,
                              link: course.link,
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 12.0, right: 12),
          child: quotescard(
              context,
              '"Your work is to discover your world and then with all your heart give yourself to it."',
              '– Buddha'),
        ),
        SizedBox(height: size.height * 0.025),
        logofield(),
      ],
    );
  }
}
