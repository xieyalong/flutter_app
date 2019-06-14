import 'package:flutter/material.dart';
class CPage extends StatelessWidget {
  //静态属性
  static const routeName = '/CPage';
  @override
  Widget build(BuildContext context) {
    //获取数据-获取上个页面传递数据
    return Scaffold(
      appBar: AppBar(
        title: Text('c页面'),
      ),
      body: Center(
        child: Text('c'),
      ),
    );
  }
}
