import 'package:firebase_auth/firebase_auth.dart';

class FirebaseHelper{
  final FirebaseAuth auth=FirebaseAuth.instance;
  /// to get people eho are currently logged in
 get user => auth.currentUser;

  Future<String?> register({required String useremail, required String pswd})async {
    try {
      await auth.createUserWithEmailAndPassword(
        email: useremail,
        password: pswd,
      );
      return null; 
    } on FirebaseAuthException catch (e) {
     return e.message;
    }
  }

  Future<String?>login({required String useremail, required String pswd}) async{
    try {
     await auth.signInWithEmailAndPassword(
          email: useremail,
          password: pswd,
      );
     return null;
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }
  ///logout
Future<void>logOut()async{
    await auth.signOut();
}
}