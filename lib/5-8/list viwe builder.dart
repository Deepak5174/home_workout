import 'package:flutter/material.dart';

class builderwithlistview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        // appBar: AppBar(
        //   title: Text("Listview Builder"),
        // ),
        body: ListView.builder(
      itemBuilder: (context, index) {
        return Container(
          color: Colors.redAccent,
          child: Center(
            child: Image.asset("assets/image/mountaion.jpg"),
          ),
        );
      },
      itemCount: 10,
    ));
  }
}

void main() {
  runApp(MaterialApp(
    home: builderwithlistview(),
  ));
}
