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
          child: new Text(
            //文本不能换行，换行报错
            ' run of text with a single style.If the given style single style.If the given style',
            //居中显示
            textAlign: TextAlign.center,
            //最大显示几行
            maxLines: 1,
            //超过显示省略号
            overflow: TextOverflow.ellipsis,
            //样式设置
            style: TextStyle(
              //字体大小
                fontSize: 14.0,
                //颜色设置argb
//              color: Color.fromARGB(255, 255,125, 124)
//              color: Colors.deepOrange
                color:const Color(0xFF42A5F5),
                //添加下划线
                decoration: TextDecoration.underline,
                //下划线样式为虚线
               decorationStyle: TextDecorationStyle.dotted
            ),
          ),
        ),
      ),
    );
  }
}

