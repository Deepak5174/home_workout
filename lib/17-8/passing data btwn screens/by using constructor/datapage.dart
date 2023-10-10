import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:home_workout/17-8/passing%20data%20btwn%20screens/by%20using%20constructor/to_statefull.dart';
import 'package:home_workout/17-8/passing%20data%20btwn%20screens/by%20using%20constructor/to_stateless.dart';

class datapage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("passing data between screens using constructor"),
      ),
      body: Container(
        alignment: Alignment.center,
        height: 250,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => statelesspge(
                          name: "Deepak",
                          palce: "Muvattupuzha",
                          phone: 9539450338)));
                },
                child: Text("To stateless page")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => statefullpage(
                          name: "Dhanush",
                          Place: "muvattupuzha",
                          phone: 8089475543)));
                },
                child: Text("To statefull page")),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: datapage(),
  ));
}
