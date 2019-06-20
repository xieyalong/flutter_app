import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
/*
拉伸回弹-下拉回弹
 */
class EasyRefreshPage2 extends StatefulWidget{
  static String  routeName = '/EasyRefreshPage2';
  @override
  State<StatefulWidget> createState() {
    return new  _EasyRefreshPage2();
  }

}
class _EasyRefreshPage2 extends State<EasyRefreshPage2>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('EasyRefreshPage'),
      ),
      //只有一个EasyRefresh 可以起到拉伸回弹作用
      body: EasyRefresh(
        behavior: ScrollOverBehavior(),
        child: Text('aaaa'),
      ),
    );
  }
}
