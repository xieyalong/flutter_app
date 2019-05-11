import 'package:flutter/material.dart';



class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('强制比例'),
      ),
      body: new AspectRatio(
        aspectRatio: 3.0 / 2.0,
        child: new Container(
          decoration: new BoxDecoration(
//            backgroundColor: Colors.lightBlueAccent[100],
          ),
        ),
      ),
    );
  }
}
void main() {
  runApp(
    new MaterialApp(
      title: 'Flutter教程',
      home: new LayoutDemo(),
    ),
  );
}

