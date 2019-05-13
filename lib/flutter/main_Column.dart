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
            title: new Text('垂直布局'),
          ),
          body:new Center(
            child: new  Column(
              //子组件对齐方式 左边对齐
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment:MainAxisAlignment.center,
              children: <Widget>[
                new Container(
                  child: new Text('标题',style: new TextStyle(),),
                  height: 50,
                  color: Colors.lightBlue,
                  //长度100%的功能
                  alignment: Alignment.center,
                ),
                new Expanded(
                    child:new Center(child:  new Text('Column2似睡'))
                ),
                new Container(
                  height: 50,
                  color: Colors.amber,
                  child:new Row(
                  children: <Widget>[
                    new Expanded(child: new Text(
                      '首页',
                      style: new TextStyle(),textAlign: TextAlign.center,
                    ),),
                    new Expanded(child: new Text(
                      'home',
                      textAlign: TextAlign.center,
                      style: new TextStyle(backgroundColor: Colors.deepOrange,fontSize: 16,),

                      ) ),
                    new Expanded(child: new Text(
                        '我的',
                        textAlign: TextAlign.center
                    ),),
                  ],
                ),
                )

              ],
            ),
          )
      ),
    );
  }
}


