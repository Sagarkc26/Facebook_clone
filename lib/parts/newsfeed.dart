import 'package:flutter/material.dart';

List<Map<String, dynamic>> details = [
  {"name": "Tiger", "address": "Address", "image": "images/tiger.jpeg"},
  {"name": "Lion", "address": "Address", "image": "images/lion.jpg"},
  {"name": "Tiger", "address": "Address", "image": "images/tiger2.jpeg"},
];

class NewsFeed extends StatelessWidget {
  const NewsFeed({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: details.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.71,
            width: MediaQuery.of(context).size.width * 0.96,
            decoration: BoxDecoration(
                color: const Color(0xff343a40),
                borderRadius: BorderRadius.circular(15)),
            child: Column(
              children: [
                ListTile(
                    leading: const CircleAvatar(),
                    title: Text(
                      '${details[index]["name"]}',
                      style: const TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: Row(
                      children: [
                        Text(
                          '${details[index]["address"]}',
                          style: const TextStyle(
                              fontSize: 14, color: Colors.white),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          "3d ago",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    trailing: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.more_vert,
                          color: Colors.white,
                        ))),
                //Captions
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Container(
                    height: 42,
                    width: MediaQuery.of(context).size.width * 0.96,
                    child: const Text(
                      "Captions",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
                //Post
                Container(
                  height: 310,
                  width: 400,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('${details[index]["image"]}'))),
                ),

                const ListTile(
                  leading: Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                  trailing: Text(
                    "14 comments . 3 shares",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 15, right: 15),
                  child: Divider(
                    color: Colors.white,
                  ),
                ),
                const ListTile(
                  leading: Text(
                    "❤ Likes",
                    style: TextStyle(color: Colors.white),
                  ),
                  trailing: Text(
                    "comments",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
