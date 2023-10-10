import 'package:flutter/material.dart';

class anie extends StatefulWidget {
  const anie({super.key});

  @override
  State<anie> createState() => _anieState();
}

 class  _anieState extends State<anie> with TickerProviderStateMixin{
  Animation<double>?anime;
  
  AnimationController? animationController;
  AnimationController? animationController2;
  @override
  void initState() {
    // animationController2=AnimationController(vsync: this,duration: Duration(seconds: 1));
    // anime=Tween<double>(begin: 100.0,end: 10.0).animate(animationController2!)..addListener(() {
    //   setState(() {
        
    //   });
    // });
   animationController= AnimationController(vsync: this,duration:Duration(seconds: 1) );
     animationController2=AnimationController(vsync: this,duration: Duration(seconds: 1));
   anime =Tween<double>(begin:10,end: 100.0).animate(animationController!)..addListener(() { 
   anime=Tween<double>(begin: 100.0,end: 10.0).animate(animationController2!);
    setState(() {
      
    });
   });
  
    
   
   
    super.initState();
  }
  
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView(children: [
        Container(
          child: Text("hello dears",
          style: TextStyle(fontSize:anime?.value ),
          ),
        ),
        ElevatedButton(onPressed: ()=>zoomin(), child: Text("Touch here")),
        ElevatedButton(onPressed: ()=>zoomout(), child: Text("small")),
      ]) ,
    );
  }
  
 void zoomin() {
   animationController!.forward();
  
 }
 
  void zoomout() {
    animationController!.forward();
  }
}
void main(){
  runApp(MaterialApp(
    home: anie(),
  ));
}