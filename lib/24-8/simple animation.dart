import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: simpleanimation(),
  ));
}

class simpleanimation extends StatefulWidget {
  const simpleanimation({super.key});

  @override
  State<simpleanimation> createState() => _simpleanimationstate();
}

class _simpleanimationstate extends State<simpleanimation> with SingleTickerProviderStateMixin {
  Animation<double>? animation;
  AnimationController? animationController;
  @override
void initstate(){
  animationController=AnimationController(vsync: this,duration: Duration(seconds:1));
  animation=Tween<double>(begin: 12.0,end: 100.0).animate(animationController!)..addListener(() { 
    setState(() {
      
    });
  });
}

  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            child: Text(
              "hey iam Deepak",
              style: TextStyle(fontSize: animation?.value),
            ),
          ),
          ElevatedButton(
              onPressed: () => ZoomIn(),
              child: const Text("increse text size")),
        ],
      ),
    );
  }

  ZoomIn() {}
}
