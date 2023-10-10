import 'package:flutter/material.dart';
import 'package:home_workout/Storages%20in%20flutter/Shared_Preferences/simple%20login%20using%20shared%20prefrences/shared_home.dart';
import 'package:home_workout/practice/splash28.dart';
import 'package:home_workout/splash/superdry.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: loginShared(),
  ));
}

class loginShared extends StatefulWidget {
  const loginShared({super.key});

  @override
  State<loginShared> createState() => _loginSharedState();
}

class _loginSharedState extends State<loginShared> {
  final name = TextEditingController();
  final email = TextEditingController();
  final pwd = TextEditingController();

  late SharedPreferences preferences;
  late bool newuser;
  @override
  void initState() {
   check_user_already_logind();
    super.initState();
  }
    void check_user_already_logind()async {
      preferences = await SharedPreferences.getInstance();
      newuser= preferences.getBool('newuser')??true;
      if (newuser==false) {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>shared_homie()));
        
      }
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: name,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  hintText: "Name",
                  labelText: "Enter your full name",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: email,
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
              controller: pwd,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  hintText: "Password",
                  labelText: "Enter your password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
          ),
          ElevatedButton(
              onPressed: () async {
                preferences = await SharedPreferences.getInstance();
                String fullname = name.text;
                String mailid = email.text;
                String password = pwd.text;


                if (fullname != "" && mailid != "" && password != "") {
                  preferences.setString('adminname', fullname);
                  preferences.setString('username', mailid);
                  preferences.setString('pass', password);
                  preferences.setBool('newuser', false);

                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => shared_homie()));
                }
                name.text = "";
                email.text = "";
                pwd.text = "";
              },
              child: Text("Login"))
        ],
      ),
    );
  }
  

}
