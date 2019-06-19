import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
class EasyRefreshPage extends StatefulWidget{
  static String  routeName = '/EasyRefreshPage';
  @override
  State<StatefulWidget> createState() {
    return new  _EasyRefreshPage();
  }

}
class _EasyRefreshPage extends State<EasyRefreshPage>{
  GlobalKey<EasyRefreshState> _easyRefreshKey = new GlobalKey<EasyRefreshState>();
  GlobalKey<RefreshFooterState> _footerKey = new GlobalKey<RefreshFooterState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('EasyRefreshPage'),
      ),
//      body:  new Container(
//        child: Text('ssss'),
//      ),
      body: new EasyRefresh(
        key: _easyRefreshKey,
//        refreshHeader: MaterialHeader(
//          key: _footerKey,
//        ),
//        refreshFooter: MaterialFooter(
//          key: _footerKey,
//        ),
        onRefresh: () async{
        },
        loadMore: () async {
        },
        child: Text('text'),
      ),
    );
  }
}
