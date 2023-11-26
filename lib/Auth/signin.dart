import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_auth/Screens/Welcome/welcome_screen.dart';
import 'package:flutter_auth/Screens/home_screen/home_screen.dart';
import 'package:get/get.dart';

class Authentication {
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  User? get currentUser => firebaseAuth.currentUser;

  Stream<User?> get authStateChanges => firebaseAuth.authStateChanges();

  Future<String> signIn(String email, String password) async {
    String message = '';
    try {
      await firebaseAuth
          .signInWithEmailAndPassword(email: email, password: password)
          .then((value) {
        print(value);
        if (value.user!.email == "aldarappqatar@gmail.com" &&
            value.user != null) {
          Get.to(HomeScreen());
        }
        message = "success";
        return message;
      });
    } on FirebaseAuthException catch (e) {
      message = e.code;
      return message;
    }
    return message;
  }
}
