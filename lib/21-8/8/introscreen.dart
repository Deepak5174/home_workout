// ignore_for_file: depend_on_referenced_packages, camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import

import 'package:flutter/material.dart';
import 'package:home_workout/practice/loginpage.dart';
import 'package:home_workout/practice/splash28.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class introscreen extends StatelessWidget {
  const introscreen({super.key});

  @override
  Widget build(BuildContext context) {
    PageDecoration pageDecoration = PageDecoration(
        titleTextStyle: GoogleFonts.abhayaLibre(
          fontWeight: FontWeight.w600,
          fontSize: 50,
          color: Color.fromARGB(206, 255, 255, 255),
        ),
        bodyTextStyle: GoogleFonts.roboto(
          
          fontSize: 20 ,
          color: Color.fromARGB(201, 255, 255, 255),
        ),
        boxDecoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 238, 222, 222),
            Color.fromARGB(231, 206, 105, 105),
          ],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        )));
    return IntroductionScreen(
      pages: [
        PageViewModel(
          decoration: pageDecoration,
            title: "Pixels",
            body: "The best free stock photos, royalty free images & videos shared by creators.", 
            image: IntroImage(
                "https://images.unsplash.com/photo-1692027569991-3ca637422603?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=435&q=80")),
        PageViewModel(
            title: "first page",
            body: "introduction screen shows the app introduction",
            image: IntroImage(
                "https://images.unsplash.com/photo-1692470124805-cd3ba39d0e3e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80")),
        PageViewModel(
            title: "first page",
            body: "introduction screen shows the app introduction",
            image: IntroImage(
                "https://images.unsplash.com/photo-1677123984159-95d70f013a70?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80")),
        PageViewModel(
            title: "first page",
            body: "introduction screen shows the app introduction",
            image: IntroImage(
                "https://images.unsplash.com/photo-1684854846445-dfcd6bde155f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80"))
      ],
      onDone: () => Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => splash1())),
      onSkip: () => Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => Loginpage())),
      showBackButton: false,
      showSkipButton: true,
      skip: Text("Skip", style: TextStyle(color: Color.fromARGB(255, 56, 51, 51)),),
      next: Icon(Icons.arrow_forward_ios,color: Color.fromARGB(255, 35, 34, 34),),
      done: Text("Done"),
      dotsDecorator: const DotsDecorator(
          size: Size(10, 12),
          color: Colors.grey,
          activeSize: Size(25, 12),
          activeColor: Color.fromARGB(255, 68, 67, 64),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(50)),
          )),
    );
  }

  Widget IntroImage(String image) {
    return Align(
        alignment: Alignment.center,
        child: Image.network(
          image,
          width: 5000,
        ));
  }
}

void main() {
  runApp(MaterialApp(
    home: introscreen(),
  ));
}
