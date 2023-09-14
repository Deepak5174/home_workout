import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class sqfsignup extends StatefulWidget {
  const sqfsignup({super.key});

  @override
  State<sqfsignup> createState() => _sqfsignupState();
}

class _sqfsignupState extends State<sqfsignup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign up"),
      ),
      body: Form(
          child: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom:80),
                child: Text(
                  "Register as a new user !",
                  style: GoogleFonts.aBeeZee(fontSize: 30),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      prefixIcon: Icon(Icons.people_alt),
                      hintText: "Name",
                      helperText: "Enter your name",
                      labelText: "Name"
                      ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      prefixIcon: Icon(Icons.email),
                        hintText: "E mail",
                      helperText: "Enter your username",
                      labelText: "E mail"
                      ),
                ),
              ),
               Padding(
                 padding: const EdgeInsets.all(10),
                 child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      prefixIcon: Icon(Icons.phone_android),
                        hintText: "Phone",
                      helperText: "Enter your phone number",
                      labelText: "Phone"
                      ),
                             ),
               ),
               Padding(
                 padding: const EdgeInsets.all(10),
                 child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      prefixIcon: Icon(Icons.password_sharp),
                        hintText: "Password",
                      helperText: "Enter a strong password",
                      labelText: "Password"
                      ),
                             ),
               ),
               Padding(
                 padding: const EdgeInsets.all(10),
                 child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      prefixIcon: Icon(Icons.password_sharp),
                        hintText: "confirm password",
                      helperText: "Renter your password",
                      labelText: "Confirm password"
                      ),
                             ),
               ),
               ElevatedButton(onPressed: (){}, child:Text( "Register"))
              
            ],
          ),
        ),
      )),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: sqfsignup(),
  ));
}
