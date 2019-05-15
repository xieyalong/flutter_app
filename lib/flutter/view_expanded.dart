import 'package:flutter/material.dart';
class view_expanded{
  Widget initPage(){
    return new Container(
      color: Colors.amberAccent,
      child: new Row(
      children: <Widget>[
        new Expanded(
          child: new Container(color: Colors.deepOrange,height:50,),
          flex: 5,
        ),
        new Expanded(
          child: new Container(color: Colors.lightBlue,height:50,),
          flex: 3,
        ), new Expanded(
          child: new Text("首页3"),
          flex: 2,
        )
      ],
    ),) ;
  }
}
