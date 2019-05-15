import 'package:flutter/material.dart';
class view_divider{
  Widget initPage(){
    return new Column(
      children: <Widget>[
        new Container(color: Colors.lightBlue,height: 50,alignment: Alignment.center,margin: EdgeInsets.fromLTRB(20, 0, 30, 0),),
        new Divider(color: Colors.deepOrange,height: 3,),
        new Container(color: Colors.lightBlue,height: 50,alignment: Alignment.center,),
        new Divider(color: Colors.deepOrange,height: 50,indent: 100,),
        new Container(color: Colors.lightBlue,height: 1,alignment: Alignment.center,),
      ],
    );
  }
}
