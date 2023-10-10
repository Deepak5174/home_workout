import 'package:flutter/material.dart';
import 'package:home_workout/firebase_ex/firebase_db.dart';
import 'package:home_workout/firebase_ex/login_firebase.dart';


class RegFire extends StatefulWidget {
  const RegFire({super.key});

  @override
  State<RegFire> createState() => _RegFireState();
}

class _RegFireState extends State<RegFire> {
  final emailcontroller = TextEditingController();
  final passcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Register page"),
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
          ElevatedButton(onPressed: () {
            String email=emailcontroller.text.trim();
            String passwrd=passcontroller.text.trim();
            FirebaseHelper().register(useremail:email,pswd:passwrd).then((result) {
              if(result==null){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginFire()));
              }else{
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(result)));
              }
            });
          }, child: const Text("Register"))
        ],
      ),
    );
  }
}
