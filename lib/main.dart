import 'package:flutter/material.dart';
import 'package:whatsapp01/calls.dart';
import 'package:whatsapp01/chats.dart';
import 'package:whatsapp01/comunity.dart';
import 'package:whatsapp01/updates.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: AK(),
  ));
}

int num = 0;
// List button = [ Icons.groups,Icons.chat, Icons.camera_alt, Icons.call_sharp];

class AK extends StatefulWidget {
  const AK({super.key});

  @override
  State<AK> createState() => _AKState();
}

class _AKState extends State<AK> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 2,
      child: Scaffold(
        // floatingActionButton: FloatingActionButton.extended(backgroundColor: Colors.green,
        //     onPressed: () {},
        //     label: Icon(
        //       button[num],
        //       color: Colors.white,
        //     )),
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text("WhatsApp"),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt_outlined)),
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
          ],
          bottom: TabBar(
              onTap: (value01) {
                setState(() {
                  num = value01;
                });
              },
              tabs: [
                Tab(
                  icon: Icon(Icons.groups),
                ),
                Tab(
                  text: "chats",
                ),
                Tab(
                  text: "Updates",
                ),
                Tab(
                  text: "calls",
                )
              ]),
        ),
        body: TabBarView(
          children: [comunity(), chat(), updates(), Calls()],
        ),
      ),
    );
  }
}
