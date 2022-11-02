import 'package:flutter/material.dart';
import 'package:myapp/auths/authsServies.dart';
import 'package:myapp/customWidget/customTextFiled.dart';

import '../customWidget/mainButton.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Center(
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                Text(
                  "LOGIN",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),
                ),
                SizedBox(
                  height: 80,
                ),
                CustomTextFiled(
                  title: "Email",
                  iconData: Icons.email,
                  Controller: _email,
                ),
                CustomTextFiled(
                  title: "Password",
                  iconData: Icons.lock,
                  Controller: _password,
                ),
                MainButton(
                  Onpressad: () {
                    FireAuths.SignIn(_email.text, _password.text, context);
                  },
                  color: Colors.green,
                  title: "LOGIN",
                ),
                MainButton(
                  Onpressad: () {
                    FireAuths.SignIn(_email.text, _password.text, context);
                  },
                  color: Colors.white,
                  title: "Google",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
