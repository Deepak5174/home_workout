import 'package:flutter/material.dart';

class  splashview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomRight,
                end: Alignment.topLeft,
                colors: [
              Color.fromARGB(255, 33, 243, 124),
              Colors.white,
              Color.fromARGB(255, 33, 243, 124),
              
            ],
            ),
            ),
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
           children: [
            Image.asset(
              "assets/icons/pngegg.png",
            ),
            // const  Text("Starbucks"),
          ]),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: splashview(),
  ));
}
