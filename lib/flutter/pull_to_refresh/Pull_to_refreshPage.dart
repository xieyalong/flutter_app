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
  RefreshController _refreshController;
  @override
  void initState() {
    super.initState();
    // initialRefresh可以在组件初始化时执行一次刷新操作
    _refreshController = RefreshController(initialRefresh:true);
    // 如果你需要开始就请求一次刷新,1.3.9版本之前要这么做
    /*
        SchedulerBinding.instance.addPostFrameCallback((_) {
            _refreshController.requestRefresh();
           });

     */
  }
  void _onRefresh(){

    /*.  after the data return,
        use _refreshController.refreshComplete() or refreshFailed() to end refreshing
   */
  }

  void _onLoading(){
    /*
        use _refreshController.loadComplete() or loadNoData() to end loading
   */
  }
  void dispose(){
    _refreshController.dispose();
    super.dispose();
  }
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
    return Container(
      child: SmartRefresher(
        enablePullDown: true,
        enablePullUp: true,
        header:WaterDropMaterialHeader(),
        controller: _refreshController,
        onRefresh: _onRefresh,
        onLoading: _onLoading,
        child:_listview(),
      ),
    );
  }
  Widget _listview(){
    List<Widget> listView=new List();
    for(int i=0;i<50;i++){
      listView.add(Container(
        height: 60,
        width: 500,
        child: Flex(
            direction: Axis.vertical,
          children: <Widget>[
            Container(
              child: Text('aaaa'),
            ),
            Container(height: 1,color: Colors.green,width: 500,)
          ],
        ),
      ));
    }
  }
}


