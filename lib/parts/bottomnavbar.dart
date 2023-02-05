import 'package:facebook_clone/homepage.dart';
import 'package:facebook_clone/parts/business.dart';
import 'package:facebook_clone/parts/school.dart';
import 'package:facebook_clone/profile.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;

  final List<Map<String, dynamic>> _pages = [
    {
      "page": HomePage(),
    },
    {
      "page": BusinessPage(),
    },
    {
      "page": SchoolPage(),
    },
    {
      "page": ProfilePage(),
    }
  ];
  void _selectedIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _pages[_currentIndex]['page'],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          currentIndex: _currentIndex,
          onTap: _selectedIndex,
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
        ));
  }
}
