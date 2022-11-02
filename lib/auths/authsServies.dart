import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:myapp/Screen/newScreen.dart';
import 'package:myapp/auths/loginScreen.dart';

final _auth = FirebaseAuth.instance;
GoogleSignIn _googleSignIn = GoogleSignIn();

class FireAuths {
  // User can make thier account for this event
  static SignUp(String? _email, String? _password, BuildContext context) async {
    try {
      await _auth
          .createUserWithEmailAndPassword(email: _email!, password: _password!)
          .then((_) async {
        await Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => LoginScreen()));
      });
    } catch (e) {
      print(e.toString());
    }
  }

  // User can login for this event if the already have account
  static SignIn(String? email, String? password, BuildContext context) async {
    try {
      await _auth
          .signInWithEmailAndPassword(email: email!, password: password!)
          .then((value) {
        Get.to(NewScreen());
      });
    } catch (e) {
      print(e);
    }
  }

  static Future<void> GoogleSignIn() async {
    await _googleSignIn.signIn().then((value) {
      print("GoogleIn Successful complete");
    });
  }
}
