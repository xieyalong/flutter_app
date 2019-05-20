import 'package:flutter/material.dart';

class ViewAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        //appBar背景颜色
        backgroundColor: Colors.lightBlue,
        //这个是个widget
        title: new Container(child: new Text('AppBar'),),
        //标题居中 默认左边
        centerTitle: true,
        //灰色背景覆盖区
        elevation: 100,
        //左边图标
        leading: new IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              print('>]左边按钮');
            }
        ),
        //这个是横向的
        actions: <Widget>[
          new IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                print('>]右边按钮');
              }
          ),
          new IconButton(
              icon: Icon(Icons.more_horiz),
              onPressed: () {
                print('>]右边按钮');
              }
          )
        ],
      ),
      // We'll create the SelectionButton Widget in the next step
      body: new Text('sss'),
    );
  }
}
