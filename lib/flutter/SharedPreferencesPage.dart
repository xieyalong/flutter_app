import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:localstorage/localstorage.dart';
import 'package:flutter_app/util/SpUtil.dart';
import 'package:flutter_app/util/LsUtil.dart';
class SharedPreferencesPage extends StatelessWidget {
  //静态属性
  static const routeName = '/SharedPreferences';
  _incrementCounter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int counter = (prefs.getInt('counter') ?? 0) + 1;
    print('Pressed $counter times.');
    await prefs.setInt('counter', counter);
  }
  _incrementCounter2() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int  _int= await prefs.getInt('counter');
    print(_int);
  }
  final LocalStorage storage = new LocalStorage('some_key');

  @override
  Widget build(BuildContext context) {
    //获取数据-获取上个页面传递数据
    return Scaffold(
        appBar: AppBar(
          title: Text('a页面'),
        ),
        body:RaisedButton(
            child: Text('下一步'),
            onPressed: () async{
//              SpUtil sp=await SpUtil.getInstance();
//              sp.putString("l_key", "张三");
//              print("str=${sp.get("l_key")}");
              LsUtil.getInstance().setItem("aa", "bbbbAAAAA");
              print(">]"+LsUtil.getInstance().getItem("aa"));
            }
        )
    );
  }
}
abstract class  A{
  void Click(var v);
}