import 'package:flutter/material.dart';

class Loginpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gmail"),
        centerTitle: false,
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.verified_user_rounded)),
          SizedBox(width: 10),
          IconButton(onPressed: () {}, icon: Icon(Icons.camera)),
          PopupMenuButton(itemBuilder: (context) {
            return [
              PopupMenuItem(
                  child: ListTile(
                title: Text("Settings"),
                leading: Icon(Icons.settings),
              )),
              PopupMenuItem(
                  child: ListTile(
                title: Text("info"),
                leading: Icon(Icons.info_outline),
              )),
              PopupMenuItem(
                  child: Card(
                      child: ListTile(
                title: Text("user"),
                leading: Icon(Icons.verified_user),
              ))),
              PopupMenuItem(
                  child: Card(
                      shape: Border(),
                      child: ListTile(
                        title: Text("payment"),
                        leading: Icon(Icons.payment_outlined),
                      ))),
              PopupMenuItem(
                  child: Card(
                child: ListTile(
                  title: Text("power saver"),
                  leading: Icon(Icons.power_off),
                ),
              ))
            ];
          })
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Loginpage(),
  ));
}
