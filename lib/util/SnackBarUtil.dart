import 'package:flutter/material.dart';
class SnackBarUtil{
  static SnackBarUtil _instance;
  SnackBarUtil._();
  static SnackBarUtil getInstance()   {
    if (_instance == null) {
      _instance=SnackBarUtil._();
    }
    return _instance;
  }
  void error(BuildContext context,String content){
    Scaffold.of(context).showSnackBar(
        SnackBar(
          content: Text('${content}'),
          backgroundColor: Colors.red,
          duration: Duration(seconds: 1),
          //可写可不写
//          action: SnackBarAction(label: "确认", onPressed: (){}),
        )
    );
  }
  void succeed(BuildContext context,String content){
    Scaffold.of(context).showSnackBar(
        SnackBar(
          content: Text('${content}'),
          backgroundColor: Colors.lightGreen,
          //可写可不写
//          action: SnackBarAction(label: "确认", onPressed: (){}),
        )
    );
  }

}
