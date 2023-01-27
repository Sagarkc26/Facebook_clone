import 'package:flutter/material.dart';

class StoryPage extends StatelessWidget {
  const StoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8),
            child: Container(
              height: 160,
              width: 100,
              decoration: BoxDecoration(
                  color: const Color(0xff343a40),
                  borderRadius: BorderRadius.circular(18)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Container(
              height: 160,
              width: 100,
              decoration: BoxDecoration(
                  color: const Color(0xff343a40),
                  borderRadius: BorderRadius.circular(18)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Container(
              height: 160,
              width: 100,
              decoration: BoxDecoration(
                  color: const Color(0xff343a40),
                  borderRadius: BorderRadius.circular(18)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Container(
              height: 160,
              width: 100,
              decoration: BoxDecoration(
                  color: const Color(0xff343a40),
                  borderRadius: BorderRadius.circular(18)),
            ),
          ),
        ],
      ),
    );
  }
}
