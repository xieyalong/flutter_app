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
import 'flutter/ScreenArguments.dart';
import 'package:fluro/fluro.dart';
void main() => runApp(MyApp());

class MyApp extends  StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //全局注册页面
        routes: {
          //ExtractArgumentsScreen
          ExtractArgumentsScreen.routeName: (context) => ExtractArgumentsScreen(),
        },
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
          onPressed: (){
            Navigator.pushNamed(
              context,
              ExtractArgumentsScreen.routeName,
              arguments: {
                "title":'这是pushNamed',
                "content":9090900
              },
            );
          }
      ),
    );
  }
}

