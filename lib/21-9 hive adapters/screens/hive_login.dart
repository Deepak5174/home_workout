import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:home_workout/21-9%20hive%20adapters/database/hivedb.dart';
import 'package:home_workout/21-9%20hive%20adapters/screens/hive_register.dart';
import 'package:get/get.dart';
import 'package:home_workout/21-9%20hive%20adapters/model/user_model.dart';

class loginpagehive extends StatelessWidget {
  final email = TextEditingController();
  final pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("log in"),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: email,
                decoration: InputDecoration(
                    labelText: "email",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                  controller: pass,
                  decoration: InputDecoration(
                      hintText: "password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)))),
            ),
            ElevatedButton(onPressed: () {
              final users = await HiveDb.instance.getuser();
              checkuserexist(users);
            }, child: Text("login")),
            TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => hiveregister()));
                },
                child: Text("resgister as anew user"))
          ],
        ),
      ),
    );
  }
  
  Future <void> checkuserexist(List <User>users) {
    final lemail = email.text.trim();
    final lpass = pass.text.trim();
    bool userFound = false;
    if (condition) {
      
    }
  }
}

void main() async {
  await Hive.initFlutter();
  // Hive.registerAdapter();
  await Hive.openBox<user>("user Data");
  runApp(GetMaterialApp(
    home: loginpagehive(),
  ));
}
