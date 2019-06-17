import 'package:flutter/material.dart';
import '../util/NavigatorUtil.dart';
import 'Page1Navigator.dart';
import '../main.dart';
class Page3Navigator extends  StatelessWidget {
  static const  routeName= '/Page3Navigator';
  var arguments;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("page3页面"),
      ),
      body: new Home(),
    );
  }
}
class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
          child: Text("page3页面"),
          onPressed: () {
            /*
            arguments：传递数据
            result:不知道怎么使用
             */
            Navigator.of(context).pushReplacementNamed(Page1Navigator.routeName,result: {'name':'李四'},arguments: ['a',true,45]);
//            Navigator.of(context).pushReplacement(new MaterialPageRoute(builder: (context){
//              return Page1Navigator();
//            }),result: {'name':'张三'});
//              Navigator.of(context).pushNamedAndRemoveUntil(Page1Navigator.routeName,(Route<dynamic> route) => false);
            /*
            predicate:某一个page,
            (predicate){}系统里面是个循环
         */
//            Navigator.of(context).pushNamedAndRemoveUntil(Page1Navigator.routeName, (predicate){
//              print('---------');
//              //
//              print(predicate.currentResult);
//              //跳转页面和传递的数据
//              print(predicate.settings);
//              return false;
//            });
//          Navigator.of(context).pushAndRemoveUntil(
//            //跳转到Page1Navigator页面
//              new MaterialPageRoute(builder:(context)=>new Page1Navigator())
//              //其他页面都为null
//              ,(route)=> route==null);
            //这样写报错
//          Navigator.of(context).pushAndRemoveUntil(
//              new MaterialPageRoute(builder: (context) {
//                return new Page1Navigator();
//              }), (route) {
//                print(route);
//               route = null;
//          });
          }
      ),
    );
  }
}
