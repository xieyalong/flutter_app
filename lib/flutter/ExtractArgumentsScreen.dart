import 'package:flutter/material.dart';
import 'package:flutter_app/util/NavigatorUtil.dart';
class ExtractArgumentsScreen extends StatelessWidget {
  //静态属性
  static const routeName = '/ExtractArgumentsScreen';
  @override
  Widget build(BuildContext context) {
    //获取数据-获取上个页面传递数据
    final  Map<String,Object> map= NavigatorUtil.getInstance().getPushNamedData(context);
    print(map);
    return Scaffold(
      appBar: AppBar(
        title: Text('${map['data']}'),
      ),
      body: Center(
        child: Text('${map}'),
      ),
    );
  }
}
