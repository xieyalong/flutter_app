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
          title: new Text('Welcome to Flutter'),
        ),
        body: new Center( //纵向中间组件Center
          //Container相当于div
            child: Container(
              child: Text('你好flutter',style: TextStyle(fontSize: 16.0),),
              //设置子空间的位置
              alignment: Alignment.topLeft,
              //设置宽高
              width: 500.0,
              height: 400.0,
              //设置背景颜色
//              color: Colors.deepOrange,
              //渐变色，要去掉“color:”
              decoration: BoxDecoration(
                //横向渐变
                  gradient:LinearGradient( colors: [Colors.lightBlue,Colors.deepOrange,Colors.amber]),
                  //设置4个边
//                border: Border.all(width: 10,color: Colors.green)
                  //设置每个边
                  border: Border(
                    top: BorderSide(width: 10.0, color:Colors.green),
                    left: BorderSide(width: 10.0, color: Colors.green),
                    right: BorderSide(width: 10.0, color: Colors.green),
                    bottom: BorderSide(width: 10.0, color: Colors.green),
                  ),
                  //设置4个角圆度
//                borderRadius: BorderRadius.all(Radius.circular(10))
                  //设置每个角圆度
                  borderRadius: BorderRadius.only(
                    topLeft:Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  )
              ),
              //设置内边距 const(常量)
              padding:  EdgeInsets.fromLTRB(50, 90.5, 0, 0),
              //外边距
              margin: EdgeInsets.fromLTRB(20, 100, 15, 0),


            )
        ),
      ),
    );
  }
}
//
////横向渐变
//gradient:LinearGradient( colors: [Colors.lightBlue,Colors.deepOrange,Colors.amber]),
////设置4个边
////                border: Border.all(width: 10,color: Colors.green)
////设置每个边
//border: Border(
//top: BorderSide(width: 10.0, color:Colors.green),
//left: BorderSide(width: 10.0, color: Colors.green),
//right: BorderSide(width: 10.0, color: Colors.green),
//bottom: BorderSide(width: 10.0, color: Colors.green),
//),
//borderRadius: BorderRadius.all(Radius.circular(10))
