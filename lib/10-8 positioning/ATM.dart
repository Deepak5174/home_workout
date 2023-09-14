import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ATMcard extends StatelessWidget {
  const ATMcard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Atm card"),
      ),
      body: Center(
        child: Stack(
          children: [
            Container(
              height: 300,
              width: 470,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                // color: Colors.amber
                image: DecorationImage(
                    image: NetworkImage(
                        "https://images.unsplash.com/photo-1675173503270-d5e0ec0e6fc5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1974&q=80"),
                    fit: BoxFit.fill),
              ),
            ),
            Positioned(
              left: 30,
              top: 130,
              child: Row(
                children: [
                  Transform.rotate(
                    angle: 90 * pi / 180,
                    child: FaIcon(
                      FontAwesomeIcons.box,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Transform.rotate(
                    angle: 90 * pi / 180,
                    child: FaIcon(
                      FontAwesomeIcons.wifi,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 300,
              top: 40,
              
              child: Container(
                  child: Text("Fi",
                      style:
                          GoogleFonts.ptSerif(color: Colors.white, fontSize: 50))),
            )
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ATMcard(),
  ));
}
