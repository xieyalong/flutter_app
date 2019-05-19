import 'package:flutter/material.dart';
//import 'flutter/PageTextField.dart';
import 'flutter/PageStatefulWidgetBindingData.dart';
void main() => runApp(MyApp());

class MyApp extends  StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('标题'),
        ),
          body:PageStatefulWidgetBindingData()
      ),
    );
  }
}
class Home extends  StatelessWidget{
  @override
  Widget build(BuildContext context) {//此时的context=MyApp
    return  new Scaffold(
        body:Column(
          children: <Widget>[
            RaisedButton(
              onPressed: (){
               // Navigator.push(context, MaterialPageRoute(builder: (context)=>PageStatefulWidget()));
              },
              child: Text('tz'),
            )
          ],
        )
    );
  }
}
