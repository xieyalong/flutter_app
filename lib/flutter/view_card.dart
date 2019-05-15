import 'package:flutter/material.dart';
class view_card{
  Widget initPage(){
    return new Column(
      children: <Widget>[
        new Card(
          child: new ListTile(
            leading: new Icon(Icons.access_alarm),
            title: new   Text("北京海淀区"),
            subtitle: new  Text('谢亚龙'),
            isThreeLine: true,
          ),
        ),
        //分割线
        new Container(height: 5,color: Colors.green,margin: EdgeInsets.fromLTRB(10, 5, 10, 0),),
      ],
    );
  }
}
