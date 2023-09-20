import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class tabes extends StatefulWidget {
  const tabes({super.key});

  @override
  State<tabes> createState() => _tabesState();
}

class _tabesState extends State<tabes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.teal,
            floating: true,
            pinned: true,
            title: Text(
              "Whats app",
              style: TextStyle(fontSize: 20),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.search),
              ),
              SizedBox(
                width: 2,
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.chat)),
              PopupMenuButton(itemBuilder: (context) {
                return [
                  PopupMenuItem(
                      child: ListTile(
                    leading: Icon(Icons.settings),
                    minLeadingWidth: 5,
                    title: Text("Settings"),
                  )),
                  PopupMenuItem(
                      child: ListTile(
                    leading: Icon(Icons.info),
                    minLeadingWidth: 5,
                    title: Text("info"),
                  )),
                  PopupMenuItem(
                      child: ListTile(
                    leading: Icon(Icons.payment),
                    minLeadingWidth: 5,
                    title: Text("payments"),
                  )),
                ];
              })
            ],
            bottom: TabBar(
              controller: ,
              indicatorSize: TabBarIndicatorSize.tab, 
            tabs: [
              FaIcon(FontAwesomeIcons.peopleGroup),
              Text("Chats"),
              Text("Status"),
              Text("Call")
            ]),
          )
        ],
      )),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: tabes(),
    debugShowCheckedModeBanner: false,
  ));
}
