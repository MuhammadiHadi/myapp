import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:myapp/Screen/newScreen.dart';
import 'package:myapp/auths/loginScreen.dart';

final _auth = FirebaseAuth.instance;

class FireAuths {
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
}
