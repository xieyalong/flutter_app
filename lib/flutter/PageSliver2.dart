import 'package:flutter/material.dart';
import 'UserModel.dart';
class PageSliver extends StatelessWidget{

  List<String> data=new UserModel().getData();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*
      集成ScrollView，
      slivers属性可以添加SliverGrid，SliverFixedExtentList
      SliverList, SliverPadding,SliverAppBar
       */
      body: CustomScrollView(
        /*
        这里的<Widget>[] 不是写多个子组件
         */
        slivers: <Widget>[
          new SliverAppBar(
            backgroundColor: Colors.amber,
            title: Text('头部'),
            /*
            true=把头部固定死
            false=跟随下面的listview滚动
             */
//            pinned: false,
          /*
          用floating时把pinned关掉
          true=网上滑动跟随下面的listview滚动，
          当往下滑动一点时时，sliverAppBar也跟着显示
           */
            floating: true,
            actions: <Widget>[

            ],
            /*
            拉伸功能
             */
//            flexibleSpace: FlexibleSpaceBar(
//              title: ,
//            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                adapter,
                childCount:data.length
            ),
          )
        ],
      ),
    );
  }

  /*
  页面item
   */
  Widget adapter(BuildContext context,int index){
    return      Container(
      color: Colors.blue,
      alignment: Alignment.center,
      child: new Text(data[index]),
    );
  }
}

//
//Widget getSliverGrid(){
//  /*
//        SliverGrid和gridView类似，里面的方法也一样
//         */
//  return new SliverGrid(
//    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//      //列数
//      crossAxisCount: 2,
//      //垂直间隙
//      crossAxisSpacing: 5,
//      //水平间隙
//      mainAxisSpacing: 5,
//    ),
//    delegate:SliverChildBuilderDelegate(
//      //第一个参数item
//      adapter,
//      childCount:data.length,
//    ) ,
//  );
//}