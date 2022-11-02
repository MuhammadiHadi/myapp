import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:myapp/Screen/newScreen.dart';
import 'package:myapp/auths/authsServies.dart';

import '../customWidget/mainButton.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController email_controller = TextEditingController();
  TextEditingController password_controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
              ),
              Text(
                "signup",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                child: TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[300],
                      prefixIcon: Icon(Icons.email),
                      hintText: "Enter Email",
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 22,
                          color: Colors.black)),
                  controller: email_controller,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                child: TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[300],
                      prefixIcon: Icon(Icons.lock),
                      hintText: "Password",
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 22,
                          color: Colors.black)),
                  controller: password_controller,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              MainButton(
                Onpressad: () {
                  FireAuths.SignUp(
                      email_controller.text, password_controller.text, context);
                },
                color: Colors.green,
                title: "SignUp",
              )
            ],
          ),
        ),
      ),
    );
  }
}
