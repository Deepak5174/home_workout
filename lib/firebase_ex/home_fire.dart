import 'package:flutter/material.dart';
import 'package:home_workout/firebase_ex/firebase_db.dart';
import 'package:home_workout/firebase_ex/login_firebase.dart';


class HomeFire extends StatelessWidget {
  const HomeFire({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text("Welcome firebase user")),
          ElevatedButton(
              onPressed: () {
                FirebaseHelper().logOut().then((result) => Navigator.of(context)
                    .push(
                        MaterialPageRoute(builder: (context) => LoginFire())));
              },
              child: Text('Sign out'))
        ],
      ),
    );
  }
}
