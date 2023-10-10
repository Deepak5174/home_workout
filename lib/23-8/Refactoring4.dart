import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:home_workout/23-8/myrefactoring%20widget.dart';
import 'package:home_workout/23-8/refactoring3.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Refactoring4(

    ),
  ));
}

class Refactoring4 extends StatelessWidget {
  const Refactoring4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Refactoring4"),
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemBuilder: ((context, index) {
            return MyWidgetRefactoring(rimage: Image.asset("assets/image/green-tropical-leaves-patterned-background.jpg"),
            label: Text("floral"),
            onclick: () {
              
            },
            );
            
          })),
    );
  }
}

// class MyWidgetRefactoring extends StatelessWidget{

//   final Color? bgcolor;
//   final Image? rimage;
//   VoidCallback? onclick;
//   Widget? label;
//   Widget? ricon;

//   MyWidgetRefactoring({
//     this.bgcolor,
//     this.label,
//     this.onclick,
//    required this.rimage,
//    this.ricon,
//   });

//   @override
//   Widget build(BuildContext context) {
    
//     return Card(
//       color: bgcolor,
//       child: ListTile(
//         leading: rimage,
//         title: label,
//         onTap: onclick,
//         trailing: ricon,
//       ),


//     );
//   }

 
// }


