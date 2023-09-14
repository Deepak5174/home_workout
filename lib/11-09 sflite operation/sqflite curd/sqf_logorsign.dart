import 'package:flutter/material.dart';
import 'package:home_workout/11-09%20sflite%20operation/login_sqf.dart';
import 'package:home_workout/11-09%20sflite%20operation/sqflite%20curd/signup.dart';
import 'package:home_workout/assignment/registration.dart';

class sqfhome extends StatefulWidget {
  const sqfhome({super.key});

  @override
  State<sqfhome> createState() => _sqfhomeState();
}

class _sqfhomeState extends State<sqfhome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/icons/welcome_user.png",
            height: 500,
            width: 500,
          ),
          ElevatedButton(onPressed: () {
             Navigator.of(context).push(MaterialPageRoute(builder: (context)=>sqf_login()));
          }, child: Text("Log in ")),
          Text(
            "or",
            style: TextStyle(fontSize: 15),
          ),
          ElevatedButton(onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>sqfsignup()));
           
          }, child: Text("Sign up")),
        ],
      )),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: sqfhome(),
  ));
}
