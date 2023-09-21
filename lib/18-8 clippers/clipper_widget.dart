import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
class clipperex extends StatelessWidget {
  const clipperex({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        shadowColor: Colors.amberAccent,
        title: Text("clipper"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(children: [
          ClipRect(
            child: Container(
              child: Align(
                  heightFactor: .6,
                  widthFactor: .6,
                  child: Image.network(
                      "https://images.unsplash.com/photo-1694845482666-7bf0c05d40ac?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=600&q=60")),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.network(
                    "https://images.unsplash.com/photo-1598089842345-111cc13e5ece?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1974&q=80")),

                    
          ),
          ClipOval(child: Image.network("https://images.unsplash.com/photo-1694215685811-62b2972e3f68?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1964&q=80")),
          ClipPath(
            clipper: WaveClipperTwo(),
            child: Image.network("https://images.unsplash.com/photo-1694843690023-3d936b2e83b4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80"),
          )
        ]),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: clipperex(),
  ));
}
