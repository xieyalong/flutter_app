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
            /*
           如果添加背景图片，往上滑动时，
           颜色有透明变成Colors.amber[400]
             */
            backgroundColor: Colors.amber[400],
          /*
          用floating时把pinned关掉
          true=网上滑动跟随下面的listview滚动，
          当往下滑动一点时时，sliverAppBar也跟着显示
           */
            floating: true,
            /*
            设置高度
             */
            expandedHeight:160,
            /*
            拉伸功能渐进
             */
            flexibleSpace: FlexibleSpaceBar(
              title: Text('nihao'.toUpperCase()),//改成大写
              //背景图片
              background:Image.asset('images/a.jpeg',fit: BoxFit.fill,),
            ),
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
