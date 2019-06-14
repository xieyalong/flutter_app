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
  /*
     Map<String,dynamic> map;
    ExtractArgumentsScreen({this.map});
         ()async{
            Map<String,Object> map=new Map();
            map['a']='A';
            map['b']='B';
            var map2=await  NavigatorUtil.getInstance().push(context, new ExtractArgumentsScreen(map: map,));
            print(">]返回的数据=${map2}");
          }
          //回调数据
          NavigatorUtil.getInstance().pop(context,{'id':9,'name':'李四'});
   */
  Future<T> push<T extends Object>(BuildContext context,Widget widget) {
    return Navigator.of(context).push(MaterialPageRoute(builder: (context)=>widget));
  }
  /*
  NavigatorUtil.getInstance().pop(context,arguments: {'id':8});
   */
  bool pop<T extends Object>(BuildContext context, [ T result ]){
    Navigator.pop(context,result);
  }
  /*
  NavigatorUtil.getInstance().pushNamed(context, routeName,arguments: {'id':34,'name':'张三'});
    NavigatorUtil.getInstance().pushNamed(context, ExtractArgumentsScreen.routeName,arguments: map).then((obj){
             print(">]-----返回的数据=${obj}");
           });
           NavigatorUtil.getInstance().pop(context,{'id':9,'name':'李四rrrr'});
   */
  Future<T> pushNamed<T extends Object>(BuildContext context, String routeName,{Object arguments,}){
    Navigator.pushNamed(context, routeName,arguments: arguments);
  }
  /*
  获取pushNamed的数据
   final  Map<String,Object> map= ModalRoute.of(context).settings.arguments;
   */
  dynamic getPushNamedData(BuildContext context){
    return ModalRoute.of(context).settings.arguments;
  }

}
