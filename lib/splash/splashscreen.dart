
import 'package:flutter/material.dart';

class splashg extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return const Scaffold( 
      body: Center(
        child: Text("Holla",style: TextStyle( 
          fontSize: 30, 
         color: Colors.blueAccent, 
         fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic),
         ),
        
      ),

    );
  }
}
void main (){
  runApp(MaterialApp(
    home: splashg(),
  ));
}