import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_workout/28-7%20splash%20login/superdrylogin.dart';
import 'package:home_workout/9-8%20stag%20grid/lottie.dart';
import 'package:introduction_screen/introduction_screen.dart';

class introscreen extends StatelessWidget {
  const introscreen({super.key});

  @override
  Widget build(BuildContext context) {
    PageDecoration pageDecoration = PageDecoration(
        titleTextStyle: GoogleFonts.aboreto(
            fontWeight: FontWeight.w600, fontSize: 50, color: Colors.white),
        bodyTextStyle: GoogleFonts.roboto(
            fontStyle: FontStyle.italic, fontSize: 30, color: Colors.white),
        boxDecoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [Colors.grey, Colors.grey, Colors.black],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
        )));
    return IntroductionScreen(
        pages: [
          PageViewModel(
              decoration: pageDecoration,
              title: "Aira",
              body:
                  "Aira is a creative platform that allows you to create your own designs and share them with the world.",
              image: IntroImage(
                  "https://images.pexels.com/photos/3778355/pexels-photo-3778355.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2")),
          PageViewModel(
              decoration: pageDecoration,
              title: "Aira",
              body: "Unleash Your Creativity on Canvas!.",
              image: IntroImage(
                  "https://images.pexels.com/photos/3778201/pexels-photo-3778201.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2")),
          PageViewModel(
              decoration: pageDecoration,
              title: "first page",
              body: "itroduction screen shows the details of the application",
              image: IntroImage(
                  "https://images.pexels.com/photos/3778180/pexels-photo-3778180.jpeg?auto=compress&cs=tinysrgb&w=600")),
          //   PageViewModel(
          //   title: "first page",
          //   body: "itroduction screen shows the details of the application",
          //  image: IntroImage("")
          // ),Unleash Your Creativity on Canvas!
        ],
        onDone: () => Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => splashlottie())),
        onSkip: () => Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => superdrylogin())),
        showSkipButton: true,
        skip: Text(
          "Skip",
          style: TextStyle(color: Colors.grey),
        ),
        next: Icon(
          Icons.navigate_next,
          color: Colors.grey,
          size: 40,
        ),
        done: Text(
          "Done",
          style: TextStyle(color: Colors.grey),
        ),
        dotsDecorator: DotsDecorator(
          size: Size(10, 15),
          color: Colors.grey,
          activeSize: Size(25, 12),
          activeColor: Colors.grey,
          activeShape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        ));
  }

  Widget IntroImage(String image) {
    return Container(
      // alignment: Alignment.center,
      // child: Alig(
        height: 800,
        width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: NetworkImage(image))),
           child: Image.network(
            image,)
          ,
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: introscreen(),
  ));
}
