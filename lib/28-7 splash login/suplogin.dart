import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:home_workout/28-7%20splash%20login/Home.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:home_workout/assignment/registration.dart';

import 'registration.dart';

class superdrylogin extends StatelessWidget {
  String Username = "admin";
  int phone = 9539450338;
  String password = "nimda";
  TextEditingController usercontroller = TextEditingController();
  TextEditingController phonecontroller = TextEditingController();
  TextEditingController passcontrller = TextEditingController();

  bool nopasswordvisibility =true;
  var formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   title: Text("login"),
      //   centerTitle: true,
      // ),
      body: Form(
        key: formkey,
        
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/icons/superdry.png",
                scale: 2,
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 5, left: 20, right: 20, bottom: 0),
                child: TextField(
                  controller: usercontroller,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.people),
                      hintText: "email",
                      helperText: "Username must be an email.",
                      labelText: "email",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 5, left: 20, right: 20, bottom: 0),
                child: TextFormField(
                  controller: phonecontroller,
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  decoration: InputDecoration(
                  
                    
                      prefixIcon: Icon(Icons.phone),
                      hintText: "Phone",
                      helperText: "Phone number must be in 10 digits",
                      labelText: "Phone",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))
                          
                          ),
                          validator: (phone){
                            if (phone!.length <=9|| phone!.length>=11) {
                              
                            }
                          },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 5,
                  left: 20,
                  right: 20,
                  bottom: 10,
                ),
                child: TextFormField(
                  
                  
                  controller: passcontrller,
                  obscureText: nopasswordvisibility,
                  obscuringCharacter: '*',
                  validator: (password){},
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.password),
                    suffixIcon:IconButton(onPressed: (){
                      
                    }, icon: Icon(Icons.abc)) ,
                    
                 
                    
                    
                   
                      hintText: "Password",
                      helperText: "Password dont be the email or phone number.",
                      labelText: "Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    if (Username == usercontroller.text &&
                         // ignore: unrelated_type_equality_checks
                         phone == phonecontroller.text &&
                        password == passcontrller.text) {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) => home()));
                    }else{
                      // ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Invalid password or username", ),
                      // backgroundColor: Colors.redAccent,
                      // ));
                      Fluttertoast.showToast(
          msg: "This is Center Short Toast",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.TOP,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.white10,
          textColor: Colors.white,
          fontSize: 16.0
          );
                    }
                  },
                  child: Text("login")),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextButton(onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>login()));
                    }, child: Text("Not a user, register here")),
                  )
            ],
          ),
        
      ),
    );
  }
}



void main(){
  runApp(MaterialApp(
    home: login(),
  ));
}
