import 'package:flutter/material.dart';

class tebex3 extends StatefulWidget {
  const tebex3({super.key});

  @override
  State<tebex3> createState() => _tebex3State();
}

class _tebex3State extends State<tebex3> {
  @override
  Widget build(BuildContext context) {
    return length: 4, child: SliverAppBar(
      floating: true ,
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

    ),
    
    
    
  }
}
  void main(){
    runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: tebex3(),
    ));
  }
