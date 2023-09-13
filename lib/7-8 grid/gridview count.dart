import 'package:flutter/material.dart';

class countgridview extends StatelessWidget {
  const countgridview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(crossAxisCount: 2,
      children: List.generate(10, (index) => Card(
        child: Center(
          child: Text("hello"),
        ),
      )),
      ),
      
    );
  }
}
void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: countgridview()
    )
  );
}