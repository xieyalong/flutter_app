import 'package:flutter/material.dart';
import 'User.dart';
class page2 extends StatelessWidget{
  var str1;
  String str2;
  User user;
  page2(this.str1,this.str2,this.user);
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("页面跳转"),
        ),
        body: new Center(
          child: new Column(
            children: <Widget>[
              new RaisedButton(
                  child: new Text('返回'),
                  onPressed: (){
                    //返回不需要Builder此时的context是page2
                    print('>]context=$context');
                    Navigator.pop(context);
                  }
              ),
              new Text('接收值:str1=$str1--str2=$str2--user.name=${user.name}'),
            ],
          ),
        ),
      ),
    );
  }


}
