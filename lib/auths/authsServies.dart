import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:myapp/Screen/newScreen.dart';

FirebaseAuth _auth = FirebaseAuth.instance;

class FireAuths {
  static SignUp(String _email, String _password, BuildContext context) async {
    try {
      await _auth
          .createUserWithEmailAndPassword(email: _email, password: _password)
          .then((value) async {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => NewScreen()));
      });
    } catch (e) {
      print(e.toString());
    }
  }
}
