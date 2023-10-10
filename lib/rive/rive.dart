import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
void main(){
  runApp(MaterialApp(
    home: rive(),
  ));
}

class rive extends StatelessWidget {
  const rive({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Container(
      width: double.infinity,
      height: double.infinity,
            child: RiveAnimation.asset("assets/animation/girl with phone.riv", fit: BoxFit.cover,),
    ),
         
    );
  }
}