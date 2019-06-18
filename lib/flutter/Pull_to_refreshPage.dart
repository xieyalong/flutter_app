import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
/*
上拉刷新下拉加载
 */
class Pull_to_refreshPage extends StatefulWidget {
  static const routeName = '/Pull_to_refreshPage';
  @override
  _Pull_to_refreshPage createState() => _Pull_to_refreshPage();
}
class _Pull_to_refreshPage extends State<Pull_to_refreshPage>{
  @override
  Widget build(BuildContext context) {
    home: new Scaffold(
      appBar: new AppBar(
        title: new Text("home"),
      ),
      body:_home(),
    );
  }
  Widget _home(){

  }
}


