import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
//material_header和material_footer系统默认
import 'package:flutter_easyrefresh/material_header.dart';
import 'package:flutter_easyrefresh/material_footer.dart';
class EasyRefreshPage extends StatefulWidget{
  static String  routeName = '/EasyRefreshPage';
  @override
  State<StatefulWidget> createState() {
    return new  _EasyRefreshPage();
  }

}
class _EasyRefreshPage extends State<EasyRefreshPage>{
  GlobalKey<EasyRefreshState> _easyRefreshKey = new GlobalKey<EasyRefreshState>();
  //material_header和material_footer系统默认
  GlobalKey<RefreshFooterState> _footerKey = new GlobalKey<RefreshFooterState>();
  //material_header和material_footer系统默认
  GlobalKey<RefreshHeaderState> _headerKey = new GlobalKey<RefreshHeaderState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('EasyRefreshPage'),
      ),
      body: new EasyRefresh(
        key: _easyRefreshKey,
//      refreshHeader和refreshFooter系统默认
        refreshHeader: MaterialHeader(
          key: _headerKey,
        ),
        refreshFooter: MaterialFooter(
          key: _footerKey,
        ),
        onRefresh: () async{
          print('>]下拉');
        },
        loadMore: () async {
          print('>]上划');
        },
        child: Text('text'),
      ),
    );
  }
}
