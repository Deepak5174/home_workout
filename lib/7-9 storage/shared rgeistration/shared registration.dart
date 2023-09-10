import 'package:flutter/material.dart';
import 'package:home_workout/7-9%20storage/shared%20rgeistration/reghome.dart';
import 'package:home_workout/7-9%20storage/simple%20login/shared%20login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class registration extends StatefulWidget {
  const registration({super.key});

  @override
  State<registration> createState() => _registrationState();
}

class _registrationState extends State<registration> {
  final uname= TextEditingController();
  final email= TextEditingController();
  final pass= TextEditingController();
  late  SharedPreferences preferences;
  late bool newuser;
  @override
  void initState() {
    // TODO: implement initState
    check_the_name_already_login();
    super.initState();
  }
  void check_the_name_already_login()async{
    preferences=await SharedPreferences.getInstance();
    newuser=preferences.getBool("loginname")?? true;
    if (newuser==false) {
           Navigator.push(context, MaterialPageRoute(builder:(context)=>reghome()));
      
    }
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: uname,
              decoration: InputDecoration(
                hintText: "Name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20)
                )
              ),
              
          
            ),
          ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: TextField(
              controller: email,
              decoration: InputDecoration(
                hintText: "Username",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20)
                )
              ),
              
           
                     ),
           ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: TextField(
              controller: pass,
              decoration: InputDecoration(
                hintText: "Password",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20)
                )
              ),
              
           
                     ),
           ),
           ElevatedButton(onPressed: ()async{
             preferences =await SharedPreferences.getInstance();
            String name= uname.text;
            String mailid =email.text;
            String pawd= pass.text;
            if (name!="" && mailid==""&& pawd=="") {
              preferences.setString("name", name);
              preferences.setString("mailid", pawd);
              preferences.setBool("usersignup", true);
              Navigator.push(context, MaterialPageRoute(builder: (context)=>login_shared()));
              
            }
            uname.text="";
            email.text="";
            pass.text="";
           
           }, child: Text("Signup"))
         
        ]),
      )
    );
  }
}
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: registration(),
  ));
}