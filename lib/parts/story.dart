import 'package:flutter/material.dart';

List<dynamic> details = [
  {"name": "Tiger", "image": "images/tiger.jpeg"},
  {"name": "Lion", "image": "images/lion.jpg"},
  {"name": "Tiger", "image": "images/tiger2.jpeg"},
  {"name": "Tiger", "image": "images/tiger.jpeg"},
  {"name": "Lion", "image": "images/lion.jpg"},
  {"name": "Tiger", "image": "images/tiger2.jpeg"},
];

class StoryPage extends StatelessWidget {
  const StoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Stack(children: [
        Row(
            children: List.generate(details.length, (index) {
          return Padding(
            padding: const EdgeInsets.only(left: 8, right: 8),
            child: Container(
              height: 160,
              width: 100,
              decoration: BoxDecoration(
                  color: const Color(0xff343a40),
                  image: DecorationImage(
                      image: AssetImage('${details[index]["image"]}'),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(18)),
              child: Padding(
                padding: const EdgeInsets.only(top: 120, left: 30),
                child: Text(
                  '${details[index]["name"]}',
                  style: const TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          );
        })),
      ]),
    );
  }
}
