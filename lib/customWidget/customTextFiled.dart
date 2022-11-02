import 'package:flutter/material.dart';

class CustomTextFiled extends StatelessWidget {
  String? title;
  IconData? iconData;
  TextEditingController? Controller;
  CustomTextFiled({this.title, this.iconData, this.Controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 23, vertical: 15),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: title!,
          prefixIcon: Icon(iconData),
        ),
        controller: Controller,
      ),
    );
  }
}
