import 'package:flutter/material.dart' show Color;

class Course {
  final String title, description, iconSrc, tools, link;
  final Color color;

  Course({
    required this.title,
    required this.description,
    required this.tools,
    required this.link,
    this.iconSrc = "assets/github.svg",
    this.color = const Color.fromARGB(255, 84, 84, 84),
  });
}

final List<Course> courses = [
  Course(
    title: 'Portfolio App',
    description:
        'Here, I showcase my Skills, Experience, Projects, Acievments and giving details About Me and my Contacts.',
    tools: 'Flutter',
    link: 'https://github.com/sj-15/Portfolio-App',
  ),
  Course(
    title: 'Tech club Website',
    description:
        "I made our college official tech club iCoders' website, where you get information about our club and also our running events and upcoming events, etc.",
    tools: "html, CSS, JS",
    link: 'https://github.com/sj-15/icodersbcrec.github.io',
  ),
  Course(
      title: 'Whatsapp Clone',
      description:
          'I try to made a clone of Whatsapp. All features are available like video calling, group chat, status, etc.',
      tools: 'Flutter, Node.Js, Express.Js, Firebase',
      link: 'https://github.com/sj-15/whatsapp-clone'),
  Course(
    title: 'Amazon Clone',
    description:
        'Full Stack Amazon Clone along with Admin Panel. Email & password auth, rating, payments, etc. available.',
    tools: 'Flutter, Node.Js, MongoDB',
    link: 'https://github.com/sj-15/Amazon-Clone',
  ),
  Course(
    title: 'Personal Expenses',
    description: 'My First android app.',
    tools: 'Flutter',
    link: 'https://github.com/sj-15/personal_expenses',
  ),
];
