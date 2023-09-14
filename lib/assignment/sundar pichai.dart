import 'package:flutter/material.dart';

class sundar extends StatelessWidget {
  const sundar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      drawer: Drawer(
        child: Container( decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.redAccent,Colors.orangeAccent,Colors.yellowAccent],
              begin: Alignment.bottomLeft,end: Alignment.topRight
              ) ),
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text("Sundar Pichai"),
                accountEmail: Text("CEO of alphabatic abc"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://gumlet.assettype.com/fortuneindia/2022-12/0599e252-e61e-4aa3-be86-54e4761e48f2/Sundar_Pichai_02064_copy.jpg?w=1200&h=675"),
                ),
              ),
              ListTile(
                leading: Icon(Icons.dashboard),
                title: Text("Dashboard"),
              ),
              ListTile(
                leading: Icon(Icons.leaderboard_sharp),
              )
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: sundar(),
  ));
}
