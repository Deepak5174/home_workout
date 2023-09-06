import 'dart:async';

import 'package:flutter/material.dart';
 import 'package:home_workout/28-7/superdrylogin.dart';

class superdry extends StatefulWidget {
  const superdry({super.key});

  @override
  State<superdry> createState() => _superdryState();
}

class _superdryState extends State<superdry> {
  @override
  void initState() {
    Timer(Duration(seconds: 4), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder:(context)=> superdrylogin()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://image1.superdry.com/static/images/optimised/upload9223368955666113562.jpg"))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Center(
            Image.asset("assets/icons/superdry.png"),
            // ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: superdry(),
  ));
}
