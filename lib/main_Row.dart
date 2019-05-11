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
          body:new Row(
            children: <Widget>[
              new Text('sssss'),
              new Text('sssss'),
              new Text('sssss')
            ],
          ),
      ),
    );
  }
}


