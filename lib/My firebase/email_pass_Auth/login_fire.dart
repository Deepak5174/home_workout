import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gutter/flutter_gutter.dart';
import 'package:home_workout/21-9%20hive%20adapters/model/user_model.dart';
import 'package:home_workout/My%20firebase/email_pass_Auth/firebase_db.dart';
import 'package:home_workout/My%20firebase/email_pass_Auth/home_fire.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
 User? user =FirebaseAuth.instance.currentUser;
 runApp(MaterialApp(home: user==null? login_fire(): HomeFire()));
}

class login_fire extends StatefulWidget {
  const login_fire({super.key});

  @override
  State<login_fire> createState() => _login_fireState();
}

class _login_fireState extends State<login_fire> {
  final usernamecontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("login"),
      ),
      body: Column(
        children: [
         Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: usernamecontroller,
               decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    hintText: "Mailid",
                    labelText: "Enter your mailid",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: passwordcontroller,
               decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    hintText: "Password",
                    labelText: "Enter your password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
            ),
          ),
          Gutter(),
          ElevatedButton(onPressed: (){
            String email= usernamecontroller.text.trim();
            String pass = passwordcontroller.text.trim();
            firebaseHelper().login(email:email,password:pass).then((result) {
              if (result==null) {Navigator.push(context,MaterialPageRoute(builder: (context)=>HomeFire()));
                
              }else{
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(result)));
              }
            });
          }, child: Text("log in")),
          Gutter(),
          TextButton(onPressed: (){}, child: Text("New user, Register here"))
        ],
      ),
    );
  }
}