import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:home_workout/28-7/Home.dart';
import 'package:fluttertoast/fluttertoast.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  var formkey = GlobalKey<FormState>();
  bool nopasswordvisibility = true;
  bool passvisibility = true;
  String? pass;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Container(
          //  decoration: BoxDecoration(
          //     image: DecorationImage(
          //         fit: BoxFit.cover,
          //         image: NetworkImage(
          //             "https://image1.superdry.com/static/images/optimised/upload9223368955666113562.jpg"))),
          child: Form(
              key:
                  formkey, //this key is used to fetch the current state of form
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/icons/superdry.png",
                    height: 250,
                    width: 250,
                  ),

                  Padding(
                    padding: const EdgeInsets.only(
                        top: 5, left: 20, right: 20, bottom: 5),
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.people),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        hintText: "Full name",
                        labelText: "Full name",
                        helperText: "Enter your full name",
                      ),
                      validator: (fullname) {
                        if (fullname!.isEmpty) {
                          return 'Field is empty';
                        } else {
                          return null;
                        }
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 5, left: 20, right: 20, bottom: 5),
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.admin_panel_settings),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        hintText: "Username",
                        labelText: "User name",
                        helperText: "Use your email-id as your user name",
                      ),
                      validator: (username) {
                        if (username!.isEmpty || !username.contains('@')) {
                          return "Field is empty or invalid";
                        } else {
                          return null;
                        }
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 5, left: 20, right: 20, bottom: 5),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.phone),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        hintText: "Phone",
                        helperText: "Enter your phonr number",
                        labelText: "Phone number",
                      ),
                      validator: (phone) {
                        if (phone!.length <= 9 || phone!.length >= 11) {
                          return "Enter a valid phone number";
                        }
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 5, left: 20, right: 20, bottom: 5),
                    child: TextFormField(
                      obscureText: passvisibility,
                      validator: (password) {
                        pass = password;
                        // Password = Password;
                        if (password!.isEmpty || password.length < 6) {

                          return 'invalid password';
                        }
                      },
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                if (passvisibility == true) {
                                  passvisibility = false;
                                } else {
                                  passvisibility = true;
                                }
                              });
                            },
                            icon: Icon(passvisibility == true
                                ? Icons.visibility_off_sharp
                                : Icons.visibility)),
                        prefixIcon: Icon(Icons.password),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        hintText: "Password",
                        helperText: "Enter a strong password",
                        labelText: "password",
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 5, left: 20, right: 20, bottom: 5),
                    child: TextFormField(
                      obscureText: nopasswordvisibility,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.password),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        hintText: "COnfirm Password",
                        helperText: "Renter the password you entered",
                        labelText: "Confirm password",
                      ),
                      validator: (confirmpass) {
                        if (confirmpass!.isEmpty || pass != confirmpass) {
                          return 'Reenterd password is not matching';
                        }
                      },
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        final valid = formkey.currentState!.validate();
                        if (valid) {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => home()));
                        } else {
                          //       Fluttertoast.showToast(
                          // msg: "Enter a valid e-mail, Phone and Password",
                          // toastLength: Toast.LENGTH_SHORT,
                          // gravity: ToastGravity.TOP_LEFT,
                          // timeInSecForIosWeb: 1,
                          // backgroundColor: Colors.white10,
                          // textColor: Colors.white,
                          // fontSize: 16.0);
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text(
                              "Invalid password or username",
                            ),
                            backgroundColor: Colors.redAccent,
                          ));
                        }
                      },
                      child: Text("Sign up")),
                  // TextButton(onPressed: (){
                  //   Navigator.of(context).push(MaterialPageRoute(builder: (context)=>home()));
                  // },
                  //  child: Text("not a user")
                  //  ),
                ],
              )),
        ),
      ),
    );
  }
}

// void main() {
//   runApp(MaterialApp(
//     home: login(),
//   ));
// }
