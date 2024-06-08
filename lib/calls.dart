import 'package:flutter/material.dart';

class Calls extends StatelessWidget {
  Calls({super.key});

  final List<IconData?> icns = [
    Icons.call_sharp,
    Icons.videocam,
    Icons.videocam,
    Icons.call_sharp,
    Icons.videocam,
    Icons.call_sharp,
    Icons.call_sharp,
    Icons.videocam,
    Icons.call_sharp,
    Icons.videocam,
  ];
  final List<String> name = [
    "Akshay",
    "Abhi",
    "Akash",
    "Appu",
    "jithu",
    "roopesh",
    "sanju",
    "unni",
    "devan",
    "rag"
  ];
  final List<String> time = [
    "30 minutes ago",
    "30 minutes ago",
    "30 minutes ago",
    "30 minutes ago",
    "30 minutes ago",
    "30 minutes ago",
    "30 minutes ago",
    "30 minutes ago",
    "30 minutes ago",
    "30 minutes ago",
  ];
  List image = [
    "lib/image/222521af-ac00-482e-b100-96a62d045258.jpeg",
    "lib/image/istockphoto-636379014-612x612.jpg",
    "lib/image/istockphoto-1347088244-612x612.jpg",
    "lib/image/pexels-photo-268533.jpeg",
    "lib/image/wp3851781-spider-man-far-from-home-wallpapers.jpg",
    "lib/image/wp3851788-spider-man-far-from-home-wallpapers.jpg",
    "lib/image/wp12212964-fight-club-pc-wallpapers.jpg",
    "lib/image/wp12627463-fight-club-pc-wallpapers.jpg",
    "lib/image/wp12720818-fight-club-pc-wallpapers.jpg",
    "lib/image/ZJ54rgu-fight-club-wallpaper.jpg",
  ];
  final List<IconData?> icn = [
    Icons.call_missed_outlined,
    Icons.call_made_outlined,
    Icons.call_received_outlined,
    Icons.call_missed_outlined,
    Icons.call_made_outlined,
    Icons.call_received_outlined,
    Icons.call_missed_outlined,
    Icons.call_made_outlined,
    Icons.call_received_outlined,
    Icons.call_received_outlined,
  ];
  final List<Color?> clr = [
    Colors.red,
    Colors.green,
    Colors.green,
    Colors.red,
    Colors.green,
    Colors.green,
    Colors.red,
    Colors.green,
    Colors.green,
    Colors.green
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          backgroundColor: Colors.green,
          label: Icon(
            Icons.add_call,
            color: Colors.white,
          )),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListView.builder(
              shrinkWrap: true,
              itemCount: 1,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.green,
                    child: Icon(Icons.link_outlined),
                  ),
                  title: Text(
                    "Create call link",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text("Share a link for your WhatsApp call"),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Recent",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: CircleAvatar(
                    // backgroundImage: AssetImage("(${image[index]})"),
                    backgroundImage: AssetImage(image[index]),
                  ),
                  title: Text(
                    name[index],
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Row(
                    children: [
                      IconButton(onPressed: () {

                      }, icon: Icon(icn[index],color: clr[index],)),
                      Text(time[index]),
                    ],
                  ),
                  trailing: Icon(icns[index]),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
