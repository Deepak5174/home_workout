

import 'dart:html';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class tabex2 extends StatefulWidget {
  const tabex2({super.key});

  @override
  State<tabex2> createState() => _tabex2State();
}

class _tabex2State extends State<tabex2> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        // appBar: AppBar(
        //   title: Text("Whats app"),
        //   actions: [],
         body: SafeArea(
            child: CustomScrollView(
           slivers: [
            SliverAppBar(
              backgroundColor: Colors.teal,
              floating: true,
              pinned: true,
              title: Text("Whats app", style: TextStyle(fontSize: 20)),
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
                indicatorSize: TabBarIndicatorSize.tab,
                tabs: [
                    FaIcon(FontAwesomeIcons.peopleGroup),
                Text("Chats"),
                Text("Status"),
                Text("Call")
                ]),
            ),
           
        
            
            // SliverList(
            // delegate: SliverChildBuilderDelegate((context, index) => Card(
            //       child: Text("hello"),
            //     )))
          ],
        )
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: tabex2(),
    debugShowCheckedModeBanner: false,
  ));
}
