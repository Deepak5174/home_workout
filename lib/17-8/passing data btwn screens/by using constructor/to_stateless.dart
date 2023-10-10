import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class statelesspge extends StatelessWidget {
  final String name;

  final String palce;

  final int phone;

  statelesspge(
      {super.key,
      required this.name,
      required this.palce,
      required this.phone});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(name,style: GoogleFonts.aboreto(fontSize: 50,color: Colors.blue,),),
            Text('$phone',style: GoogleFonts.aboreto(fontSize: 40,color: Colors.red),),
            Text(palce,style: GoogleFonts.aboreto(fontSize: 40,color: Colors.amberAccent),),

          ],
        ),
      ),
    );
  }
}
void main (){
  runApp(MaterialApp(
    home: statelesspge(name: "ASUS", palce: "EKM", phone: 9539450338),
  ));
}