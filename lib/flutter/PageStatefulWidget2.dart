import 'package:flutter/material.dart';

class  PageStatefulWidget2 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    //绑定动态页面
    return PageStatefulWidgetState();
  }
}


class  PageStatefulWidgetState extends State<PageStatefulWidget2> {
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body:Text('pppppp2222'),
    );
  }
}
