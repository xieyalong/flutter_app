import 'package:flutter/material.dart';
class Page3Navigator extends  StatelessWidget {
  var arguments;
  @override
  Widget build(BuildContext context) {
    print(">]Page3Navigator arguments=${arguments}");
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Page3Navigator"),
      ),
      body: new Home(),
    );
  }
}
class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
          child: Text("返回"),
          onPressed: (){
            Navigator.pop(context);
          }),
    );
  }
}
