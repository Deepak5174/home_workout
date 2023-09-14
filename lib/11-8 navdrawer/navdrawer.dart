import 'package:flutter/material.dart';

class navdrawer extends StatelessWidget {
  const navdrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                      image: NetworkImage(
                          "https://media.gq.com/photos/59de24832a19b738a08d8fef/16:9/w_1920%2Cc_limit/leather-jackets-beckham-opener.jpg"))),
                          
              accountName: Text("David Beckham"),
              accountEmail: Text("It's me David"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://media.gq.com/photos/56e853e7161e63486d04d6c8/4:3/w_1600,h_1200,c_limit/david-beckham-gq-0416-2.jpg"),
              ),
              // otherAccountsPictures: [
              //   CircleAvatar(backgroundImage: NetworkImage("https://www.wallofcelebrities.com/celebrity/david-beckham/pictures/xxlarge/david-beckham_400964.jpg"),)
              // ],
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
            ),
             ListTile(
              leading: Icon(Icons.security),
              title: Text("Privacy & Security"),
            ),
             ListTile(
              leading: Icon(Icons.explore),
              title: Text("Explore"),
            ),
             ListTile(
              leading: Icon(Icons.message),
              title: Text("Messages"),
            ),
             ListTile(
              leading: Icon(Icons.create),
              title: Text("Create"),
            ),
             ListTile(
              leading: Icon(Icons.notifications),
              title: Text("Notifications"),
            ),
             ListTile(
              leading: Icon(Icons.info),
              title: Text("About"),
            ),
             ListTile(
              leading: Icon(Icons.help),
              title: Text("Help"),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: navdrawer(),
  ));
}
