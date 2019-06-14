import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class NavigatorUtil{
  static NavigatorUtil _instance;
  NavigatorUtil._();
  static NavigatorUtil getInstance()   {
    if (_instance == null) {
      _instance = new NavigatorUtil._();
    }
    return _instance;
  }
  void push(BuildContext context,Widget widget){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>widget));
  }
  void pop(BuildContext context){
    Navigator.pop(context);
  }
  /*
  NavigatorUtil.getInstance().pushNamed(context, routeName,arguments: {'id':34,'name':'张三'});
   */
  void pushNamed(BuildContext context, String routeName,{Object arguments,}){
    Navigator.pushNamed(context, routeName,arguments: arguments);
  }
}
