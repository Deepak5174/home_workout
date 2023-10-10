import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:home_workout/21-9%20hive%20adapters/database/hivedb.dart';
import 'package:home_workout/21-9%20hive%20adapters/model/user_model.dart';

class hiveregister extends StatelessWidget {
  final email  =TextEditingController();
  final pass =TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: "email",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30)
                )
              ),
            ),
            TextField(
               decoration: InputDecoration(
                labelText: "password",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30)
                )
              ),

            ),
            ElevatedButton(onPressed: ()async{
              final userlist= await HiveDb.instance.getUser();
        validatesignup(userlist);
            }, child: const Text("regester"))
          ],
        ),
      )
    );
  }
  
  void validatesignup(List <user>userlist) async{
    final uname = email.text.trim();
    final pwd = pass.text.trim();
    bool userfound =false;
    final validateemail = EmailValidator.validate(uname);
    if (validateemail==true) {
      await Future.forEach(userlist, (singleuser) {
        if (singleuser.email==uname) {

          
        }
      });
      
    }
  }
}
