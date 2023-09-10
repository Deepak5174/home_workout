import 'package:flutter/material.dart';

class extendgridview extends StatelessWidget {
  const extendgridview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.extent(maxCrossAxisExtent: 200
      ,
      
      children: List.generate(20, (index) => Card(
        child: Center(
          child: Icon(Icons.money),
        )
      )),),
      
    );
  }
}
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false ,
    home: extendgridview(),
  ));
}