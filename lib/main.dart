import 'package:flutter/material.dart';
import 'flutter/view_image2.dart';
//import 'view_positioned.dart';
//import 'view_expanded.dart';
//import 'view_divider.dart';
//import 'view_card.dart';
//import 'view_listTile.dart';
//import 'page1.dart';
//import 'page2.dart';
//import 'view_image2.dart';
void main() => runApp(MyApp());

class MyApp extends  StatelessWidget{

  @override
  Widget build(BuildContext context) {//此时的context=MyApp
    return MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('标题'),
        ),
//        body:new page1(context).initPage(),
          body:init_view(context),
      ),
    );
  }

  Widget init_view(BuildContext context){

// 布局控件-层叠 Positioned组件
//    var $view=new view_positioned();
//权重组件
//    var $view=new view_expanded();
//    // 分割线
//    var $view=new view_divider();
//    // 卡片布局
//    var $view=new view_card();
// titl布局
//    var $view=new view_listTile();
  //页面跳转
//    var $view=new page1(context);
      var v=new view_image2();
    return v.initPage();
  }


}
