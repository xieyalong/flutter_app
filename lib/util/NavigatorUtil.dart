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
     ExtractArgumentsScreen([this.map]);

                  NavigatorUtil.getInstance().push(context, new ExtractArgumentsScreen({'id':4,'name':'ssssss'})).then((Object obj){
             if(null!=obj){
               print(">]-----返回的数据=${obj}");
             }
           });
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
   NavigatorUtil.getInstance().pushNamed(context, ExtractArgumentsScreen.routeName,arguments: {'id':4,'name':'ssssss'}).then((Object obj){
             if(null!=obj){
               print(">]-----返回的数据=${obj}");
             }
           });
           //数据回调
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
