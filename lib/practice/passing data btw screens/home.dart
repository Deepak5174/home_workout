import 'dart:math';

import 'package:flutter/material.dart';
import 'package:home_workout/17/8/dummy%20data.dart';

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("filpkart"),
        ),
        body: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          children: List.generate(10, (index) => Card(
            chi),
          ))
            
        ));
  }
}
