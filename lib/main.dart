import 'package:flutter/material.dart';
import 'flutter/PageTest.dart';
import 'flutter/PageAnnimation.dart';
import 'flutter/WebViewPage2.dart';
import 'flutter/WebViewPage.dart';
import 'flutter/page1.dart';
import 'flutter/page2.dart';
import 'flutter/Page1Navigator.dart';
import 'flutter/Page2Navigator.dart';
import 'flutter/Page3Navigator.dart';
import 'flutter/PassArgumentsScreen.dart';
import 'flutter/ExtractArgumentsScreen.dart';
import 'flutter/SharedPreferencesPage.dart';
import 'flutter/JsonPage.dart';
import 'flutter/ScreenArguments.dart';
import 'package:fluro/fluro.dart';
import 'util/NavigatorUtil.dart';
import 'package:flutter_app/util/NavigatorUtil.dart';
void main() => runApp(MyApp());

class MyApp extends  StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //全局注册页面
      routes: {
        //ExtractArgumentsScreen
        ExtractArgumentsScreen.routeName: (context) => ExtractArgumentsScreen(),
        PassArgumentsScreen.routeName: (context) => PassArgumentsScreen(),
        //数据存储
        SharedPreferencesPage.routeName:(context) => SharedPreferencesPage(),
        //json处理
//        JsonPage.routeName:(context) => JsonPage(),
      },
//      initialRoute: JsonPage.routeName,
      //监听路线
      onGenerateRoute: (v){
        //routes里面注册的routeName
        print('跳转的页面=${v.name}');
        print('传递的数据=${ v.arguments}');
      },
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("home"),
        ),
        body:Home(),
      ),

    );
  }
}
class Home extends  StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  new Scaffold(
      body:RaisedButton(
          child: Text('跳转页面'),
          onPressed: ()async{
            NavigatorUtil.getInstance().push(context, new ExtractArgumentsScreen({'id':4,'name':'ssssss'})).then((Object obj){
             if(null!=obj){
               print(">]-----返回的数据=${obj}");
             }
           });
//           NavigatorUtil.getInstance().pushNamed(context, ExtractArgumentsScreen.routeName,arguments: map).then((Object obj){
//             if(null!=obj){
//               print(">]-----返回的数据=${obj}");
//             }
//           });

//            var map2 = await Navigator.push(context,
//                new MaterialPageRoute(builder: (context) => new ExtractArgumentsScreen(map)),
//            );
//            print(">]-----返回的数据=${map2}");
          }
      ),
    );
  }

}

