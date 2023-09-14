
import 'package:flutter/material.dart';

class positioningcard extends StatelessWidget {
  const positioningcard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ATM card"),
      ),
      body: Stack(
        children: [
          Container(
            height: 200,
            width: 200,
            color: Colors.redAccent,
          ),
             Container(
            height: 50,
            width:  50,
            color: Colors.amber,
          ),
             Positioned(
              left: 50 ,
              top: 50,
               child: Container(
                         height: 100,
                         width: 100,
                         color: Colors.greenAccent,
                       ),
             ),
        ],
      ),

    );
  }
}
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: positioningcard(),
  ));
}