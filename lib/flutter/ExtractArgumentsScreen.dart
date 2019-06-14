import 'package:flutter/material.dart';
import 'package:flutter_app/util/NavigatorUtil.dart';
class ExtractArgumentsScreen extends StatelessWidget {
    Map<String,dynamic> map;
    ExtractArgumentsScreen([this.map]);
  static const routeName = '/ExtractArgumentsScreen';
  @override
  Widget build(BuildContext context) {
    //获取数据-获取上个页面传递数据
    map= NavigatorUtil.getInstance().getPushNamedData(context);
    print('>]ExtractArgumentsScreen.map=${map}');
    return Scaffold(
      appBar: AppBar(
        title: Text('${map}'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('${map}'),
          onPressed: (){
//            Navigator.pop(context,{'id':9,'name':'李四'});
            NavigatorUtil.getInstance().pop(context,{'id':9,'name':'李四rrrr'});
          },
        ),
      ),
    );
  }
}
