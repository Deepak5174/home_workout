import 'package:flutter/material.dart';
import 'package:home_workout/10-8%20positioning/singlechildscroll%20with%20expanded.dart';
import 'package:home_workout/28-7%20splash%20login/registration.dart';
import 'package:home_workout/7-8%20grid/gridx.dart';

import 'package:home_workout/assignment/whatsapp.dart';
import 'package:home_workout/practice/splash28.dart';

class bottom_nav_bar extends StatefulWidget {
  const bottom_nav_bar({super.key});

  @override
  State<bottom_nav_bar> createState() => _bottom_nav_barState();
}

class _bottom_nav_barState extends State<bottom_nav_bar> {
 int index =0;
 var screens=[
  whatsapp(),
  login(),
  splash1(),
  gridview1(),


 ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text("bottom nav bar"),
    ),
    bottomNavigationBar: BottomNavigationBar(
      selectedItemColor: Colors.grey,
      backgroundColor: Colors.redAccent,
      // fixedColor: Colors.red,
      type:BottomNavigationBarType.fixed,
      currentIndex: index,
      onTap: (tappedindex){
        setState(() {
          index =tappedindex;
        });
      },
      items: [
      BottomNavigationBarItem(icon: Icon(Icons.home_filled),label: "Home"),
       BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),
        BottomNavigationBarItem(icon: Icon(Icons.account_circle_rounded),label: "Profile"),
         BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Settings")
    ]),
    body: Center(
      child: screens[index],
    ) ,
    
    );
   
  }
}
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: bottom_nav_bar(),
  ));
}