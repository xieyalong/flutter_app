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
      title: 'Welcome to Flutter',
      //Scaffold脚手架 有了这个可搭建里面的内容了
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('listview'),
        ),
        body: Container(
          //纵向的listview
          child: new ListView(
            //子view是widget集合，可以是任何组件
            children: <Widget>[
              //瓦片 一个list被瓦片给盖上
              new ListTile(
                //Icons.add 系统自带图标
                leading: new Icon(Icons.add),
                title: new Text('添加'),
              ),
              new Image.network(
                  'http://pic29.nipic.com/20130601/12122227_123051482000_2.jpg'),
              new Text(
                  'text',
              ),
              new Container(
                child: new Text('ddddd'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
