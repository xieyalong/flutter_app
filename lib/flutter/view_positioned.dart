import 'package:flutter/material.dart';
class view_positioned{
  Widget initPage(){
    return new Stack(
      children: <Widget>[
        new Container(
          color: Colors.lightBlue,
          width: 300,
          height: 300,
        ),
        new Positioned(
          child: new Text("张三"),
          left: 100,
          top: 50,
        ),
        new Positioned(
          child: new Text("李四"),
          left: 150,
          top: 100,
        )
      ],
    );
  }
}
