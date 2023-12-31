import 'dart:ffi';

import 'package:firebase_auth/firebase_auth.dart';

class firebaseHelper {
  final FirebaseAuth auth = FirebaseAuth.instance;
  get user => auth.currentUser;
  Future<String?> register(
      {required String useremail, required String password}) async {
    try {
      await auth.createUserWithEmailAndPassword(
          email: useremail,
           password: password);
      return null;
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  Future<String?> login({required String email, required String password})async {
    try {
  await auth. signInWithEmailAndPassword(
    email: email,
    password: password
    
  );
  return null;
} on FirebaseAuthException catch (e) {
  return e.message;
}

  }
  // logout
  Future<Void>logOut()async{
    await auth.signOut();
  }
}
