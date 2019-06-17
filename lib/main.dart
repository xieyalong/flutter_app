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
//import 'package:fluro/fluro.dart';
import 'util/NavigatorUtil.dart';
import 'package:flutter_app/util/NavigatorUtil.dart';
//import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
//import 'package:package_info/package_info.dart';
import 'util/PackageInfoUtil.dart';
import 'util/DeviceInfoUtil.dart';
import 'util/InitUtil.dart';
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
        JsonPage.routeName:(context) => JsonPage(),
        Page1Navigator.routeName:(context) => Page1Navigator(),
        Page2Navigator.routeName:(context) => Page2Navigator(),
        Page3Navigator.routeName:(context) => Page3Navigator(),
      },
//      initialRoute: JsonPage.routeName,
      //监听路线
      onGenerateRoute: (v){
        //routes里面注册的routeName
        print('>]跳转的页面=${v.name}');
        print('>]传递的数据=${ v.arguments}');
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
    //先初始化
    InitUtil.getInstance();
    return  new Scaffold(
      body:RaisedButton(
          child: Text('跳转页面'),
          onPressed: (){
            print('>]---'+DeviceInfoUtil.getInstance().model()+'--'+DeviceInfoUtil.getInstance().brand());
          }
      ),
    );
  }

}

