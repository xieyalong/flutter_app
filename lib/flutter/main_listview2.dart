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
          title: new Text('listview2'),
        ),
        body: Container(
          //纵向的listview
          height: 200,
          child:new MyList()
        ),
      ),
    );
  }

}
/**
 * 拆分在MyApp{}外面
 */
class MyList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    //把listview return过去
    return new ListView(
      scrollDirection:Axis.horizontal ,
      children: <Widget>[
        new Container(
          color: Colors.deepOrange,
          width: 100,
          height: 100,//这里单独设置不管用
        ),
        new Container(
          color: Colors.green,
          width: 100,
          height: 100,
        ), new Container(
          color: Colors.lightBlue,
          width: 100,
          height: 100,
        ), new Container(
          color: Colors.amber,
          width: 100,
          height: 100,
        ),
        new Container(
          color: Colors.deepOrange,
          width: 100,
          height: 100,
        ),
        new Container(
          color: Colors.green,
          width: 100,
          height: 100,
        ), new Container(
          color: Colors.lightBlue,
          width: 100,
          height: 100,
        ), new Container(
          color: Colors.amber,
          width: 100,
          height: 100,
        )
      ],
    );
  }
}
