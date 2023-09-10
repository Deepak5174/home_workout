import 'package:flutter/material.dart';

class buldergridview extends StatelessWidget {
  const buldergridview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemCount: 20,
          itemBuilder: (context, index) {
            return Card( 
                   color: Colors.redAccent[100],
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Holla"),
                    Icon(Icons.handshake)
                  ],
                  
                ),
                
              ),
            );
            
          }),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: buldergridview(),
  ));
}
