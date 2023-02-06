import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Menu",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: const [
                    Icon(Icons.settings),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.search),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text("h")
          ]),
        ),
      ),
    );
  }
}
