import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class splashlottie extends StatelessWidget {
  const splashlottie({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromARGB(255, 255, 18, 2),
      body: Container(
        child: LottieBuilder.asset(
          "assets/animation/animation_lmgdiugs.json",
          height: double.infinity,
          // width: double.infinity,
          fit: BoxFit.fill,
      )
      )
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: splashlottie(),
  ));
}
