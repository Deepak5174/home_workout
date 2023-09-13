import 'package:flutter/material.dart';

class gridview1 extends StatelessWidget {
  const gridview1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gridview"),
      ),
      body: GridView(gridDelegate: 
      // SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 300),
      children: 
        List.generate(10, (index) => Container(
          child: Image.asset("assets/icons/superdry.png"),
        ))
        
      ,
      ),
      
    );
  }
}
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: gridview1(),
  ));
}