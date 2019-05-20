import 'package:flutter/material.dart';
class ViewPageView{
  BuildContext context;
  ViewPageView(this.context);
  List<Widget> pages=[
    Stack(
      children: <Widget>[
             /*
               SizedBox.expand:占满整个可用空间
               */
        SizedBox.expand(
          child: Image.asset(
            'images/a.jpeg',
            fit: BoxFit.fill,
          ),
        ),
        new Positioned(child: Text('nihao',style: TextStyle(color: Colors.red),),left: 100,top: 100,)
      ],
    ),
    new Container(
      alignment: Alignment.center,
      color: Colors.amber[300],
      child: Text('第二个页面'),
    ),
    new Container(
      alignment: Alignment.center,
      color: Colors.green[400],
      child: Text('第三个页面'),
    )
  ];
  Widget initPage(){
    return PageView.builder(
      itemCount: pages.length,
        itemBuilder: (context,index){
          return pages[index];
        },
    );
  }
}



//
//Widget initPage(){
//  return  PageView(
//    /*
//      true=当滑到超过中间时会自动进入下页，否则自动滑动上页
//      flase=滑到哪里就是哪里
//       */
//    pageSnapping: true,
//    /*
//      true:索引翻转，第1个显示最后一个页面，一次排列
//       */
//    reverse: false,
//    /*
//       Axis.vertical=垂直滑动
//       Axis.horizontal=水平滑动
//       */
//    scrollDirection: Axis.horizontal,
//    controller: new PageController(
//      /*
//         默认选择页面
//         */
//        initialPage: 3,
//        /*
//        true=默认,记住滚到了那个页面
//         */
//        keepPage: false,
//        /*
//        占用页面的比例，
//        会根据滚动的方向判断占用，
//        0.8=占用页面的80%
//         */
//        viewportFraction: 0.8
//    ),
//    /*
//      页面滑动事件
//       */
//    onPageChanged: (index){
//      print('>]页面=$index');
//    },
//    children:pages,
//  );
//}



