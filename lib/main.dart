import 'package:flutter/material.dart';
//import 'flutter/PageTextField.dart';
import 'flutter/PageStatefulWidgetBindingData.dart';
import 'flutter/PageStatefulWidget2.dart';
import 'flutter/PageMinWidget.dart';
import 'flutter/PageDialog.dart';

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
        body:PageDialog()
    );
  }
}
