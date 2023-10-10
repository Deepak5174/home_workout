import 'package:flutter/material.dart';
import 'package:home_workout/My%20firebase/email_pass_Auth/firebase_db.dart';
import 'package:home_workout/My%20firebase/email_pass_Auth/login_fire.dart';

class Register_fire extends StatefulWidget {
  const Register_fire({super.key});

  @override
  State<Register_fire> createState() => _Register_fireState();
}

class _Register_fireState extends State<Register_fire> {
  final usernamecontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registration"),
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
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                String email = usernamecontroller.text.trim();
                String pass = passwordcontroller.text.trim();
                firebaseHelper()
                    .register(useremail: email, password: pass)
                    .then((result) {
                  if (result == null) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => login_fire()));
                  } else {
                    ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content: Text(result)));
                  }
                });
              },
              child: Text("reg here"))
        ],
      ),
    );
  }
}
