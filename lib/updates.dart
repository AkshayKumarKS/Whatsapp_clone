import 'package:flutter/material.dart';

class updates extends StatelessWidget {
  updates({super.key});

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
    "Just now",
    "Just now",
    "Just now",
    "Just now",
    "Just now",
    "Just now",
    "Just now",
    "Just now",
    "Just now",
    "Just now",
  ];
  final List image = [
    "lib/image/222521af-ac00-482e-b100-96a62d045258.jpeg",
    "lib/image/istockphoto-636379014-612x612.jpg",
    "lib/image/istockphoto-1347088244-612x612.jpg",
    "lib/image/pexels-photo-268533.jpeg",
    "lib/image/wp3851781-spider-man-far-from-home-wallpapers.jpg",
    "lib/image/wp3851788-spider-man-far-from-home-wallpapers.jpg",
    "lib/image/wp12212964-fight-club-pc-wallpapers.jpg",
    "lib/image/wp12627463-fight-club-pc-wallpapers.jpg",
    "lib/image/wp12720818-fight-club-pc-wallpapers.jpg",
    "lib/image/ZJ54rgu-fight-club-wallpaper.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          backgroundColor: Colors.green,
          label: Icon(
            Icons.camera_alt,
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
                  leading: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      CircleAvatar(
                        radius: 36,
                        backgroundImage: AssetImage(
                          "lib/image/wp3851781-spider-man-far-from-home-wallpapers.jpg",
                        ),
                      ),
                      Icon(
                        Icons.add_circle_outlined,
                        color: Colors.green,
                      ),
                    ],
                  ),
                  title: Text(
                    "My Status",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text("Tap to add status"),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Recent Updates"),
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(color: Colors.cyanAccent, width: 3),
                      color: Colors.green,
                    ),
                    child: CircleAvatar(
                      backgroundImage: AssetImage(image[index]),

                    ),
                  ),
                  title: Text(
                    name[index],
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(time[index]),
                );
              },
            ),
            ExpansionTile(title: Text("Viewed updates"),
            children: [ ListView.builder(
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(color: Colors.grey, width: 3),
                      color: Colors.green,
                    ),
                    child: CircleAvatar(
                      backgroundImage: AssetImage(image[index]),
                    ),
                  ),
                  title: Text(
                    name[index],
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(time[index]),
                );
              },
            ),],),

          ]
        ),
      ),
    );
  }
}
