/**
 * 口令：一切皆组件
 */
//样式 ui库
import 'package:flutter/material.dart';

//入口方法
void main() => runApp(MyApp(
));

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
          body:new myGridView_fun()
      ),
    );
  }
}

//使用函数的写法
class myGridView_fun extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return new GridView(
      padding: EdgeInsets.all(10),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        //纵向间距
        mainAxisSpacing: 20,
        //横向间距
        crossAxisSpacing: 10,
        //宽高比 宽比高大多少倍
        childAspectRatio:0.7,
      ),
        children: <Widget>[
        new Image.network('http://img5.mtime.cn/mg/2019/05/10/123107.27911870_285X160X4.jpg',fit: BoxFit.cover,),
        new Image.network('http://img5.mtime.cn/mg/2019/05/10/112632.20937438_285X160X4.jpg',fit: BoxFit.cover,),
        new Image.network('http://img5.mtime.cn/mg/2019/05/10/102641.19341699_285X160X4.jpg',fit: BoxFit.cover,),
        new Image.network('http://img5.mtime.cn/mg/2019/05/10/123107.27911870_285X160X4.jpg',fit: BoxFit.cover,),
        new Image.network('http://img5.mtime.cn/mg/2019/05/10/112852.43621309_285X160X4.jpg',fit: BoxFit.cover,),
        new Image.network('http://img5.mtime.cn/mg/2019/05/10/123107.27911870_285X160X4.jpg',fit: BoxFit.cover,),
        new Image.network('http://img5.mtime.cn/mg/2019/01/30/152307.77354514_1280X720X2.jpg',fit: BoxFit.cover,),
        new Image.network('http://img5.mtime.cn/mg/2019/05/10/123107.27911870_285X160X4.jpg',fit: BoxFit.cover,),
        ]
    );
  }
}
//使用GridView.count方法
class MyGridView_count extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: EdgeInsets.all(10),
      //间距
      crossAxisSpacing:10.0,
      //列数
      crossAxisCount: 3,
      children: <Widget>[
        new Text('ppppp',style: new TextStyle(backgroundColor: Colors.green),textAlign: TextAlign.center),
        new Text('2',textAlign: TextAlign.center),
        new Text('sdsdsds',textAlign: TextAlign.center),
        new Text('ererer',textAlign: TextAlign.center),
        new Text('5',textAlign: TextAlign.center),
        new Text('6',textAlign: TextAlign.center),
        new Text('dsdsds',textAlign: TextAlign.center),
      ],
    );
  }
}

