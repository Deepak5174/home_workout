import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class splashe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  "https://image1.superdry.com/static/images/optimised/zoom/upload9223368955666113562.jpg"))),
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/icons/superdry.png"),
          FaIcon(FontAwesomeIcons.instagram)
        ],
      )),
    ));
  }
}

void main() {
  runApp(MaterialApp(
    home: splashe(),
  ));
}
