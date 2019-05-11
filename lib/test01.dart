import 'package:flutter/material.dart';
class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('强制大小'),
      ),
      body: new SizedBox(
        width: 250.0,
        height: 250.0,
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
