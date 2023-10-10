import 'package:flutter/material.dart';

class simple_animation extends StatefulWidget {
  const simple_animation({super.key});

  @override
  State<simple_animation> createState() => _simple_animationState();
}

class _simple_animationState extends State<simple_animation> with TickerProviderStateMixin {
  Animation<double>? animation;
  
  AnimationController? animationController;
  AnimationController? animationController2;
  @override
  void initState() {
   animationController =AnimationController(vsync: this,duration: Duration(seconds: 1));
   animation=Tween<double>(begin: 10.0,end: 100.0).animate(animationController!)..addListener(() {
     animationController2= AnimationController(vsync: this,duration: Duration(seconds: 1));
   animation =Tween<double>(begin: 100.0,end: 10.0).animate(animationController2!);
    setState(() {
        
    });
   });
    super.initState(
      
    );

    
   
    
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Container(
          margin: EdgeInsets.all(20),
          child: Text("Holla All",
          style: TextStyle(fontSize: animation!.value,),
          ),
        ),
        
        ElevatedButton(onPressed: ()=> zoomIn(), child: Text("Increase text size")),
        ElevatedButton(onPressed: ()=>zoomOut(), child: Text("decrese text size"))
      ]),
    );
  }
  
 void zoomIn() {
  animationController!.forward();
 }
 
 void zoomOut() {
  animationController2!.forward();
 }
}
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: simple_animation()));
  
}