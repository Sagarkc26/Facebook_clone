import 'package:flutter/material.dart';

class Detail {
  final String name, address, image;
  Detail({required this.name, required this.address, required this.image});
}

List<Detail> Details = [
  Detail(name: "name", address: "address", image: "image"),
];

class NewsFeed extends StatelessWidget {
  const NewsFeed({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.7,
            width: MediaQuery.of(context).size.width * 0.96,
            decoration: BoxDecoration(
                color: const Color(0xff343a40),
                borderRadius: BorderRadius.circular(15)),
            child: Column(
              children: [
                ListTile(
                    leading: const CircleAvatar(),
                    title: const Text(
                      "Name & Surname",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: Row(
                      children: const [
                        Text(
                          "Address",
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
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
                  decoration: const BoxDecoration(color: Colors.white),
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
                const Divider(
                  color: Colors.white,
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.7,
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
