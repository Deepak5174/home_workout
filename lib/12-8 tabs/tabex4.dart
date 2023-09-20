import 'package:flutter/material.dart';
import 'package:home_workout/12-8%20tabs/gpt.dart';

class tabex4 extends StatefulWidget {
 
 

  @override
  State<tabex4> createState() => _tabex4State();
}

class _tabex4State extends State<tabex4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: MyCustomScrollView(),
    );
  }
}
class MyCustomScrollView extends StatefulWidget{
  @override
  Widget build (BuildContext){
    return CustomScrollView()
  }
  
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}

void main(){
  runApp(MaterialApp(
    home: tabex4(),
  ));
}