import 'package:flutter/material.dart';
class BPage extends StatelessWidget {
  //静态属性
  static const routeName = '/BPage';
  @override
  Widget build(BuildContext context) {
    //获取数据-获取上个页面传递数据
    return Scaffold(
      appBar: AppBar(
        title: Text('b页面'),
      ),
      body: Center(
        child: Text('b'),
      ),
    );
  }
}
