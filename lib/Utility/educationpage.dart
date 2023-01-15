import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

List<String> dates = [
  'March 2016',
  'March 2018',
  'November 2020',
];
List<String> titles = [
  '10th Passed',
  '12th Passed',
  'BTech 3rd year',
];
List<String> details = [
  '10th grade from Balipur Melatala High School(H.S.), Balipur and with 80% of marks were secured by me.',
  '12th grade from Shymapur High School(H.S.), Shyampur and with 85% of marks were secured by me.',
  'Currently, I\'m in 3rd Pursuing B.Tech in Computer Science & Engineering from Dr B. C. Roy Engineering College, Durgapur and current GPA: 9.43',
];

Widget educationDetails(index) {
  return Card(
    elevation: 30,
    shadowColor: const Color.fromARGB(172, 255, 255, 255),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15),
    ),
    child: Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            dates[index],
            style: const TextStyle(color: Colors.black38, fontSize: 12),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            titles[index],
            style: const TextStyle(color: Colors.black54, fontSize: 18),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            details[index],
            style: const TextStyle(color: Colors.black, fontSize: 15),
          ),
        ],
      ),
    ),
  );
}

Widget educationpage() {
  return Timeline.tileBuilder(
    builder: TimelineTileBuilder.fromStyle(
      contentsAlign: ContentsAlign.alternating,
      contentsBuilder: (context, index) {
        return educationDetails(index);
      },
      itemCount: 3,
    ),
  );
}
