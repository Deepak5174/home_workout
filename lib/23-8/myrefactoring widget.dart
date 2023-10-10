import 'package:flutter/material.dart';

class MyWidgetRefactoring extends StatelessWidget{

  final Color? bgcolor;
  final Image? rimage;
  VoidCallback? onclick;
  Widget? label;
  Widget? ricon;

  MyWidgetRefactoring({
    this.bgcolor,
    this.label,
    this.onclick,
   required this.rimage,
   this.ricon,
  });

  @override
  Widget build(BuildContext context) {
    
    return Card( 
      color: bgcolor,
      child: Center(
        child: ListTile(
          leading: rimage,
          title: label,
          onTap: onclick,
          trailing: ricon,
        ),
      ),


    );
  }

 
}
