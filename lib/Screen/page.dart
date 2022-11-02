import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/Screen/newScreen.dart';

class PageScreen extends StatelessWidget {
  final List<String> Images = [
    "assets/images/setting.png",
    "assets/images/setting.png",
    "assets/images/setting.png",
    "assets/images/setting.png",
    "assets/images/setting.png",
    "assets/images/setting.png",
    "assets/images/setting.png",
    "assets/images/setting.png",
    "assets/images/setting.png",
    "assets/images/setting.png",
  ];
  final List<String> Title = [
    "setting",
    "setting1",
    "setting2",
    "setting3",
    "setting4",
    "setting5",
    "setting6",
    "setting7",
    "setting8",
    "setting9",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello World"),
      ),
      body: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: Images.length,
          itemBuilder: (context, index) {
            return Container(
              height: 250,
              width: 150,
              color: Colors.white,
              child: Column(
                children: [
                  InkWell(
                      onTap: () {
                        Get.to(NewScreen());
                      },
                      child: Hero(
                          tag: Image,
                          child: Image.asset(Images[index].toString()))),
                  Text(Title[index].toString()),
                ],
              ),
            );
          }),
    );
  }
}
