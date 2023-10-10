import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class statefullpage extends StatefulWidget {
  final String Place;
  
  final String name;
  
  final int phone;

  @override
   statefullpage(
      {super.key,
      required this.name,
      required this.Place,
      required this.phone});

  @override
  State<statefullpage> createState() => _statefullpageState();
}

class _statefullpageState extends State<statefullpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(widget.name,style: GoogleFonts.aboreto(fontSize: 50,color: Colors.blue,)),
            Text(widget.Place,style: GoogleFonts.scada(fontSize: 50,color: const Color.fromARGB(255, 243, 229, 33),)),
            Text("${widget.phone}",style: GoogleFonts.aboreto(fontSize: 50,color: const Color.fromARGB(255, 243, 79, 33),))
          ],
        ),
      ),
    );
  }
}
