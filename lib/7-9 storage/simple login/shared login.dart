import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'shared home.dart';

class login_shared extends StatefulWidget {
  const login_shared({super.key});

  @override
  State<login_shared> createState() => _login_sharedState();
}

class _login_sharedState extends State<login_shared> {
  final email = TextEditingController();
  final password = TextEditingController();
  late SharedPreferences preferences;
  late bool newuser;
  @override
  void initState() {
    // TODO: implement initState
    check_if_user_already_login();
    super.initState();
  }

  void check_if_user_already_login() async {
    preferences = await SharedPreferences.getInstance();
    newuser = preferences.getBool("userlogin") ?? true;
    if (newuser == false) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => sharedhome()));
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("login"),
      // ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                      "assets/image/mountaion.jpg"))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: email,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                      prefixIcon: Icon(Icons.people),
                      hintText: "Enter your Email id",
                      labelText: "Email",
                      hintStyle: TextStyle(
                          color: const Color.fromARGB(255, 173, 165, 138)),
                      border: OutlineInputBorder(borderSide: BorderSide(color: Colors.white),

                          borderRadius: BorderRadius.circular(25)),
                          disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: BorderSide(color: Colors.white),
                          ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(25))),
                          

                  // border: OutlineInputBorder(
                  //     borderRadius: BorderRadius.circular(20))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: password,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                      prefixIcon: Icon(Icons.password_outlined),
                      hintText: "Enter your Password",
                      labelText: "Password",
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(25)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(25))),
                ),
              ),
              ElevatedButton(
                onPressed: () async {
                  preferences = await SharedPreferences.getInstance();

                  String username = email.text;
                  String pass = password.text;
                  if (username != "" && pass != "") {
                    preferences.setString("uname", username);
                    preferences.setString("pwd", pass);
                    preferences.setBool("userlogin", true);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => sharedhome()));
                  }
                  email.text = "";
                  password.text = "";
                },
                child: Text("login"),
                style: ElevatedButton.styleFrom(
                    shadowColor: Colors.grey, backgroundColor: Colors.grey),
              )
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: login_shared(),
  ));
}
