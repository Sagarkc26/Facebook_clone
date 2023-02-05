import 'package:facebook_clone/parts/story.dart';
import 'package:flutter/material.dart';

import 'package:facebook_clone/parts/newsfeed.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: const Text(
          "Facebook",
          style: TextStyle(fontSize: 29, fontFamily: 'Lobster'),
        ),
        actions: [
          Row(
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: const Color(0xff343a40),
                    borderRadius: BorderRadius.circular(30)),
                child:
                    IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
              ),
              const SizedBox(
                width: 15,
              ),
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: const Color(0xff343a40),
                    borderRadius: BorderRadius.circular(30)),
                child: IconButton(
                    onPressed: () {}, icon: const Icon(Icons.notifications)),
              ),
              const SizedBox(
                width: 15,
              ),
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: const Color(0xff343a40),
                    borderRadius: BorderRadius.circular(30)),
                child: IconButton(
                    onPressed: () {}, icon: const Icon(Icons.message)),
              ),
              const SizedBox(
                width: 5,
              ),
            ],
          )
        ],
      ),
      body: Column(
        children: const [
          StoryPage(),
          Expanded(child: NewsFeed()),
        ],
      ),
    );
  }
}
