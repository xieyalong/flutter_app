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
          title: new Text('Welcome to '),
        ),
        body: new Center( //纵向中间组件Center
          //Container相当于div
            child: Container(
              //App中的资源 不起作用
             child:Image.asset(
              'images/2/food01.jpeg'
             ),
              //读取本地文件
//               child: Image.file(file),
              //类似于内存总的图片
//            child: Image.memory(bytes),
              //网路图片
//              child: Image.network(
//                'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1558001103&di=c0ec8b2d5f7fe0b342657a0095f44ef7&imgtype=jpg&er=1&src=http%3A%2F%2Fpic.baike.soso.com%2Fp%2F20090719%2F20090719200820-27871859.jpg',
//                //填满容器，图片不变形，可能被剪切了
////                fit: BoxFit.cover,
//                //图片平铺
//                repeat:ImageRepeat.noRepeat,
//                //图片模式
//                color: Colors.deepOrange,
//                colorBlendMode: BlendMode.darken,
//              ),
//              color: Colors.green,
//              width: 500.0,
//              height: 400.0,
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
