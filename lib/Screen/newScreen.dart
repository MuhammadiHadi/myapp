import 'package:flutter/material.dart';

class NewScreen extends StatefulWidget {
  const NewScreen({Key? key}) : super(key: key);

  @override
  State<NewScreen> createState() => _NewScreenState();
}

class _NewScreenState extends State<NewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello"),
      ),

      body: Column(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            color: Colors.white,
            child: Hero(
                tag: Image, child: Image.asset("assets/images/setting.png")),
          ),
          ExpansionTile(
              subtitle: Text("hello mr jeari"),
              leading: Icon(Icons.access_time),
              trailing: Icon(Icons.abc),
              title: Text("heelow")),
          Text(
            "Hello world this my first app ",
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.w900),
          ),
          Container(
            height: 200,
            width: double.infinity,
            color: Colors.black,
            margin: EdgeInsets.symmetric(horizontal: 20),
          )
        ],
      ),
    );
  }
}
