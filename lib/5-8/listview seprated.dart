import 'package:flutter/material.dart';

class listvieseprate extends StatelessWidget {
 
  var months=[
   " January", "February", "March", "April"," May"," June", "July", "August", "September", "October", "November", "December"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
          itemBuilder: (context, index) {
            return Container(
              height: 40,
              child: Card(
                
                
                child: Text
                (months [index]),
              ),
            );
          },
          separatorBuilder: (context, index) {
            
            if (index % 4== 0) {
              return Container(
                
                height: 40,
                child: Card(
                  // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Advertisment", textAlign: TextAlign.center,),
                  ),
                  color: Colors.redAccent,
                ),
              );
            } else {
              return SizedBox(
                height: 10,
              );
            }
          },
          itemCount: 12),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: listvieseprate(),
  ));
}
