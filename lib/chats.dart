import 'package:flutter/material.dart';

class chat extends StatelessWidget {
  chat({super.key});

  final List<String> items = [
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
  final List<String> sub = [
    "hi",
    "how ",
    "are ",
    "you",
    "hello",
    "HY",
    "morning",
    "by",
    "hyy",
    "hello"
  ];
  final List<Object> image = [
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(onPressed: () {

      },backgroundColor: Colors.green, label: Icon(Icons.chat,color: Colors.white,)),
        body: ListView.builder(
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          leading: CircleAvatar(backgroundImage: AssetImage("${image[index]}")),
          title: Text(items[index],style: TextStyle(fontWeight: FontWeight.bold),),
          subtitle: Text(sub[index]),
          trailing: Text("7:25"),
        );
      },
    ));
  }
}
