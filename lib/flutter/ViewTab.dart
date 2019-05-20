import 'package:flutter/material.dart';
class ViewTab{
  Widget initPage(){
    return  new DefaultTabController(
      length: 10,
      child: new Scaffold(
        appBar: new AppBar(
          //appBar背景颜色
          backgroundColor: Colors.amber,
          bottom: new TabBar(
//          指示器的形状, 类型为Decoration 取消下划线BoxDecoration()
//            indicator: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(3))),
            //未被选择的的颜色包括Text和icon
            unselectedLabelColor: Colors.black,
            //选中的颜色
            labelColor: Colors.red,
            //tab多的时候设置是否左右滑动
            isScrollable: true,
            //指示器
            indicatorColor: Colors.red,
            //指示器的高度
            indicatorWeight: 5,
            //指示器设置内边距
//            indicatorPadding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            //label宽度=内容宽度，tab=宽度=tab宽度
//            indicatorSize: TabBarIndicatorSize.label,
            //设置每个标签的边距
//          labelPadding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            tabs: <Widget>[
              new Tab(
//                child:new Container(child: new Text('tab1sdfdsfsd'),height: 50,),
                text: 'wwww1' ,
              icon: new Icon(Icons.add),
              ),
              new Tab(text: 'tab2', icon: null,),
              new Tab(text: 'tab3', icon: null,),
              new Tab(text: 'tab4', icon: null,),
              new Tab(text: 'tab5', icon: null,),
              new Tab(text: 'tab6', icon: null,),
              new Tab(text: 'tab7', icon: null,),
              new Tab(text: 'tab8', icon: null,),
              new Tab(text: 'tab9', icon: null,),
              new Tab(text: 'tab10', icon: null,),
            ],
          ),
        ),
        // tab的页面
        body: new TabBarView(children: <Widget>[
          new Container(child:new Text('page1') ,color: Colors.green,alignment: Alignment.center,),
          new Container(child:new Text('page2') ,color: Colors.grey,alignment: Alignment.center,),
          new Container(child:new Text('page3') ,color: Colors.amber,alignment: Alignment.center,),
          new Container(child:new Text('page4') ,color: Colors.grey,alignment: Alignment.center,),
          new Container(child:new Text('page5') ,color: Colors.amber,alignment: Alignment.center,),
          new Container(child:new Text('page6') ,color: Colors.green,alignment: Alignment.center,),
          new Container(child:new Text('page7') ,color: Colors.grey,alignment: Alignment.center,),
          new Container(child:new Text('page8') ,color: Colors.amber,alignment: Alignment.center,),
          new Container(child:new Text('page9') ,color: Colors.grey,alignment: Alignment.center,),
          new Container(child:new Text('page10') ,color: Colors.amber,alignment: Alignment.center,)
        ]),
      ),
    );
  }
}

