import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_workout/11-09%20sflite%20operation/sqflite%20curd/sqf_logorsign.dart';

class sqf_login extends StatefulWidget {
  const sqf_login({super.key});

  @override
  State<sqf_login> createState() => _sqf_loginState();
}

class _sqf_loginState extends State<sqf_login> {
  TextEditingController usercontroller =TextEditingController();
  TextEditingController passcontrller =TextEditingController();
  var formkey =GlobalKey <FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text("Log in"),
      ),
      body: Form(
        child: Center(

          child: Column(
            
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Text("Log in Here", style: GoogleFonts.abhayaLibre(fontStyle:FontStyle.italic,fontSize: 50),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: usercontroller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    prefixIcon: Icon(Icons.people_outline),
                    hintText: "E mail",
                    helperText: "Enter your username",
                    labelText: "E mail"
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: passcontrller,
                  decoration: InputDecoration(
                    border:
                        OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                    prefixIcon: Icon(Icons.password_rounded),
                    hintText: "Password",
                    helperText: "Enter your password",
                    labelText:"Password", 
                  ),
                ),
              ),
              ElevatedButton(onPressed: (){
                // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>sqfhome()));
              }, child: Text("Login"))
            ],
          ),
        ),
      ),
    );
  }
}

// void main() {
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: sqf_login(),
//   ));
// }
