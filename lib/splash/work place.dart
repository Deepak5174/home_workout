import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class instagram extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 80 ,
              ),
              ShaderMask(
                blendMode: BlendMode.srcIn,
                shaderCallback: (Rect bounds) => const LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: [
                    Colors.deepOrange,
                    Colors.pink,
                    Colors.deepOrange,
                  ],
                  tileMode: TileMode.mirror,
                ).createShader(bounds),
                child: const FaIcon(
                  FontAwesomeIcons.github,
                  size: 80,
                ),
              ),
              // const SizedBox(
              //   height: 200 ,
              // ),
              // const Text(
              //   "GIT HUB",
              //   style: TextStyle(color: Colors.black),
              // ),
              // const SizedBox(
              //   height: 00,
              // ),
              // const Text(
              //   "META",
              //   style: TextStyle(color: Colors.black),
              // ),
              Align(
                heightFactor: 30 ,
                alignment: FractionalOffset.bottomCenter,
                child: Text("GIT HUb"),
              )
            ],
          ),
        ));
  }
}

void main() {
  runApp(MaterialApp(
    home: instagram(),
  ));
}
