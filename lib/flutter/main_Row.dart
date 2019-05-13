/**
 * 口令：一切皆组件
 */
//样式 ui库
import 'package:flutter/material.dart';

//入口方法
void main() => runApp(MyApp());

//继承StatelessWidget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
// MaterialApp也是组件 一切皆组件
    return new MaterialApp(
      //Scaffold脚手架 有了这个可搭建里面的内容了
      home: new Scaffold(
          appBar: new AppBar(
            title: new Text('gridview'),
          ),
          body:new myRow2(),
      ),
    );
  }
}
class myRow2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Row(
      children: <Widget>[
        new RaisedButton(
          onPressed: (){//单机事件
            print('>]--------');
          },
          child: new Text('green1'),
          color: Colors.green,
        ),
        new RaisedButton(
          onPressed: (){},//空的单机事件
          child: new Text('amber'),
          color: Colors.amber,
        ),
        new RaisedButton(
          onPressed: (){},//空的单机事件
          child: new Text('lightBlue'),
          color: Colors.lightBlue,
        )
      ],
    );
  }
}
/*
 */
class myRow1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Row(
      children: <Widget>[
        new Expanded(
          child:new RaisedButton(
            onPressed: (){//单机事件
              print('>]--------');
            },
            child: new Text('green'),
            color: Colors.green,
          ),
        ),
        new Expanded(
            child:new RaisedButton(
              onPressed: (){},//空的单机事件
              child: new Text('amber'),
              color: Colors.amber,
            )
        ),
        new Expanded(
            child:new RaisedButton(
              onPressed: (){},//空的单机事件
              child: new Text('lightBlue'),
              color: Colors.lightBlue,
            )
        ),
      ],
    );
  }
}


