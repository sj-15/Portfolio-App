import 'package:flutter/material.dart';

import 'coursecard.dart';
import 'projects.dart';

class ProjectsPage extends StatefulWidget {
  const ProjectsPage({super.key});

  @override
  State<ProjectsPage> createState() => _ProjectsPageState();
}

class _ProjectsPageState extends State<ProjectsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40),
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
    );
  }
}
