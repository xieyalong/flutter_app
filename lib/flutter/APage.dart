import 'package:flutter/material.dart';
class APage extends StatelessWidget {
  //静态属性
  static const routeName = '/APage';
  @override
  Widget build(BuildContext context) {
    //获取数据-获取上个页面传递数据
    return Scaffold(
      appBar: AppBar(
        title: Text('a页面'),
      ),
      body:RaisedButton(
          child: Text('下一步'),
          onPressed: (){
            Navigator.pushNamed(
              context,
              BPage.routeName,
            );
          }
      )
    );
  }
}
