import 'package:flutter/material.dart';
void main() => runApp(MyApp());
class MyApp extends  StatelessWidget {

  @override
  Widget build(BuildContext context) {
    //此时的context=MyApp
    return MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('page1'),
        ),
        body: new Home(),
      ),
    );
  }
}
class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return null;
  }
}
