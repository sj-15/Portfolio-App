import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProjectsPage extends StatefulWidget {
  const ProjectsPage({super.key});

  @override
  State<ProjectsPage> createState() => _ProjectsPageState();
}

class _ProjectsPageState extends State<ProjectsPage> {
  int _current = 0;
  final List<String> just_index = ['1', '2', '3', '4', '5'];
  final List<String> project_title = [
    'Portfolio App',
    'Tech club Website',
    'WhatsApp Clone',
    'Amazon Clone',
    'Personal Expenses'
  ];
  final List<String> description = [
    'Here, I showcase my Skills, Experience, Projects, Acievments and giving details About Me and my Contacts.',
    'Here, I showcase my Skills, Experience, Projects, Acievments and giving details About Me and my Contacts.',
    'Here, I showcase my Skills, Experience, Projects, Acievments and giving details About Me and my Contacts.',
    'Here, I showcase my Skills, Experience, Projects, Acievments and giving details About Me and my Contacts.',
    'Here, I showcase my Skills, Experience, Projects, Acievments and giving details About Me and my Contacts.'
  ];
  final List<String> skills = [
    'Flutter',
    'html, CSS, JS',
    'Flutter, FireBase',
    'Flutter, MySQL',
    'Flutter, MySQL'
  ];
  List<Widget> generateProjectTitle() {
    return just_index
        .map(
          (e) => const ClipRRect(child: Text('')),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
