import 'package:flutter/material.dart';
class Page1Navigator extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
          body:Theme(
              data: ThemeData(
                  primaryColor: Colors.lightGreen
              ),
              /*
              局部主题的内容
               */
              child:WidgetTheme()
          )
      ),
    );
  }
}
/*
必须分离出来 不然不显示
 */
class WidgetTheme extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      //此时的APPbar不要加在Page1Navigator
      appBar: new AppBar(
        title: new Text('局部主题'),
      ),
      body:  Container(
        //获取主题设置的颜色
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}

