import 'package:flutter/material.dart';

class customlistview extends StatelessWidget {
  const customlistview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.custom(childrenDelegate: SliverChildListDelegate(
        List.generate(10, (index) => Container(
          
          height: 40 ,
          child: Card(
            
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Holla"),
            
              
            ),
            
          
          ),
          
        ))
      ) ),
    );
  }
}void  main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: customlistview(),
  ));
}