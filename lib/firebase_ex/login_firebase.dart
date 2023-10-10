import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:home_workout/My%20firebase/email_pass_Auth/home_fire.dart';
import 'package:home_workout/firebase_ex/firebase_db.dart';
import 'package:home_workout/firebase_ex/reg_firebase.dart';


void main() async {
  /// to initalize fire base

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyCsIYv9CqV-gZgQ3U2zfLnAP6dEUjEIm-A",
          appId: "1:672420927310:android:945665053220c959f4b01f",
          messagingSenderId: "",
          projectId: "fir-p-80d7c"));

  /// to check if there is any user
  User? user = FirebaseAuth.instance.currentUser;
  runApp(MaterialApp(home: user == null ? LoginFire() : HomeFire()));
}

class LoginFire extends StatefulWidget {
  const LoginFire({super.key});

  @override
  State<LoginFire> createState() => _LoginFireState();
}

class _LoginFireState extends State<LoginFire> {
  final emailcontroller = TextEditingController();
  final passcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login page"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: TextField(
              controller: emailcontroller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "email",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: TextField(
                controller: passcontroller,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "password",
                )),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
              onPressed: () {
                String email = emailcontroller.text.trim();
                String pass = passcontroller.text.trim();
                FirebaseHelper()
                    .login(useremail: email, pswd: pass)
                    .then((result) {
                  if (result == null) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeFire()));
                  } else {
                    ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content: Text(result)));
                  }
                });
              },
              child: const Text("Login")),
          TextButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>RegFire()));

          }, child: Text("Register"))
        ],
      ),
    );
  }
}
