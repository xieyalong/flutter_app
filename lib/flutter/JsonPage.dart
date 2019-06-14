import 'package:flutter/material.dart';
//import 'package:json_serializable/json_serializable.dart' as json;
//import 'package:json_annotation/json_annotation.dart' as json2;
//import "package:web_socket_channel/io.dart";
import 'package:flutter_app/util/JsonUtil.dart';
class JsonPage extends StatelessWidget {
  //静态属性
  static const routeName = '/JsonPage';

  @override
  Widget build(BuildContext context) {
    //获取数据-获取上个页面传递数据
    return Scaffold(
        appBar: AppBar(
          title: Text('a页面'),
        ),
        body:Flex(
          direction: Axis.vertical,
          children: <Widget>[
            RaisedButton(
                child: Text('创建1'),
                onPressed: () async{
                  String strData='{"a":"AA","b":"BAAAA","c":45,"g":"L"}';
                  dynamic json=JsonUtil.getInstance().toStringJson(strData);
                  print(json['g']);
                }
            ),
            RaisedButton(
                child: Text('创建2'),
                onPressed: () async{
                }
            )
          ],

        )
    );
  }
}
abstract class  A{
  void Click(var v);
}
