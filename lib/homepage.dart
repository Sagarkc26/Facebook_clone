import 'package:flutter/material.dart';

import 'package:facebook_clone/parts/newsfeed.dart';
import 'package:facebook_clone/parts/story.dart';

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
      body: SingleChildScrollView(
        child: Column(
          children: const [
            StoryPage(),
            NewsFeed(),
          ],
        ),
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
            canvasColor: Colors.black,
            primaryColor: Colors.red,
            textTheme: Theme.of(context)
                .textTheme
                .copyWith(caption: const TextStyle(color: Colors.amber))),
        child: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: 'Business',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.video_collection_sharp,
              ),
              label: 'School',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.menu,
              ),
              label: 'School',
            ),
          ],
          selectedItemColor: Colors.blue,
        ),
      ),
    );
  }
}
