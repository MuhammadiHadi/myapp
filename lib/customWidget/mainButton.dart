import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  String? title;
  VoidCallback? Onpressad;
  Color? color;

  MainButton({this.title, this.Onpressad, this.color});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: Onpressad,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.05,
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
        decoration: BoxDecoration(
            color: color, border: Border.all(width: 0.8, color: Colors.pink)),
        child: Center(
            child: Text(
          title!,
          style: TextStyle(
              fontSize: 20, color: Colors.black, fontWeight: FontWeight.w500),
        )),
      ),
    );
  }
}
