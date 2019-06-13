import 'package:flutter/material.dart';
class ExtractArgumentsScreen extends StatelessWidget {
  //静态属性
  static const routeName = '/ExtractArgumentsScreen';
  @override
  Widget build(BuildContext context) {
    //获取数据-获取上个页面传递数据
    final  Map<String,Object> map= ModalRoute.of(context).settings.arguments;
    print(map);
    return Scaffold(
      appBar: AppBar(
        title: Text('${map['title']}'),
      ),
      body: Center(
        child: Text('${map['content']}'),
      ),
    );
  }
}
