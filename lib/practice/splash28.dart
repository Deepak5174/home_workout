import 'dart:async';

import 'package:flutter/material.dart';
import 'package:home_workout/practice/loginpage.dart';

class splash1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => splash1State();
}

class splash1State extends State<splash1> {
  @override
  void initState() {
    Timer(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Loginpage()));
     });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset("assets/icons/social.png"),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: splash1(),
  ));
}
