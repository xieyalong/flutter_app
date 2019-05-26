import 'package:flutter/material.dart';
import 'flutter/PageHttp.dart';

void main() => runApp(MyApp());

class MyApp extends  StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('标题'),
        ),
          body:Home(),
      ),
    );
  }
}
class Home extends  StatelessWidget{
  @override
  Widget build(BuildContext context) {//此时的context=MyApp
    return  new Scaffold(
        body:PageHttp()
    );
  }
}
