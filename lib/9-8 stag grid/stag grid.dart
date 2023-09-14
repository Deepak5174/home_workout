// ignore_for_file: unused_import, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class gridstag extends StatelessWidget {
  const gridstag({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stag Grid"),
      ),
      body: SingleChildScrollView(
        child: StaggeredGrid.count(
          crossAxisCount: 4,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
          children: [
            StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 2,
                child: Container(
                  color: Colors.green,
                  child: Icon(FontAwesomeIcons.twitch),
                )),
            StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 1,
                child: Container(
                  color: Colors.redAccent,
                  child: Icon(FontAwesomeIcons.whatsapp),
                )),
            StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 3,
                child: Container(
                  color: Colors.purpleAccent,
                  child: Icon(FontAwesomeIcons.chrome),
                )),
            StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 2,
                child: Container(
                  color: Colors.yellow,
                  child: Icon(FontAwesomeIcons.google),
                )),
            StaggeredGridTile.count(
                crossAxisCellCount: 3,
                mainAxisCellCount: 1,
                child: Container(
                  color: Colors.green,
                  child: Icon(FontAwesomeIcons.microsoft),
                )),
            StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: Container(
                  color: Colors.blueGrey,
                  child: Icon(FontAwesomeIcons.appStore),
                )),
            StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 2,
                child: Container(
                  color: Colors.lightBlueAccent,
                  child: Icon(Icons.follow_the_signs),
                )),
            StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 4,
                child: Container(
                  color: Colors.cyanAccent,
                  child: Icon(Icons.car_crash),
                )),
            StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 2,
                child: Container(
                  color: Colors.blue,
                  child: Icon(Icons.electric_bike),
                )),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: gridstag()));
}
