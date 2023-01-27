import 'package:flutter/material.dart';

class NewsFeed extends StatelessWidget {
  const NewsFeed({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.6,
            width: MediaQuery.of(context).size.width * 0.96,
            decoration: BoxDecoration(
                color: const Color(0xff343a40),
                borderRadius: BorderRadius.circular(15)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.6,
            width: MediaQuery.of(context).size.width * 0.96,
            decoration: BoxDecoration(
                color: const Color(0xff343a40),
                borderRadius: BorderRadius.circular(15)),
          ),
        ),
      ],
    );
  }
}
