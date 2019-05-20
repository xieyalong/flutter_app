import 'package:flutter/material.dart';
class ViewGridView{
  BuildContext context;
  ViewGridView(this.context);
  List<Widget> adapter=new List();
  Widget initPage(){
    initData();
    return GridView.builder(
      /*
       水平和垂直滚动
       */
      scrollDirection: Axis.vertical,
      //item
      itemCount: adapter.length,
//      itemBuilder: (index){
//        return ada
//      },
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      /*
      交叉轴上面的数量
       */
        crossAxisCount: 3,
      //  垂直间隙
      crossAxisSpacing:10 ,
     // 水平间隙
      mainAxisSpacing: 10,
    ),
    );
  }
  void initData(){
    for(int i=0;i<200;i++){
      adapter.add( new Container(
        alignment: Alignment.center,
        color: Colors.red,
        child: Text('item=$i',style: TextStyle(color:Colors.amber[300]),),
      ));
    }
  }
}




