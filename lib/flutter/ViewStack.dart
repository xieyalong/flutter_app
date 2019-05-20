import 'package:flutter/material.dart';
class ViewStack{
  Widget initPage(){
    return new SizedBox(
//        height: 400,
//        width: 380,
//        color: Colors.red,
        child:  new ConstrainedBox(
          /*
          父组件设置了宽高不起作用
          设置最大高度，最小高度
          最大宽度，最小宽度
           */
          constraints: new BoxConstraints(
            maxHeight: 50,
            minHeight:20,
            maxWidth: 50,
            minWidth: 20,
          ),
          child:new Container(
            height: 400,
            width: 380,
            color: Colors.green,
            child: new  Text('sss'),
          ) ,
        )
    );
  }


  List<Positioned> list_p=[
    new Positioned(
      child:new Icon(Icons.ac_unit,color: Colors.green,),
//距离上部20
      top: 20,
//距离右边50
      right: 50,
    ),
    new Positioned(
      child:new Icon(Icons.build,color: Colors.red,),
      left: 20,
      top: 20,
    )
  ];

  List<AspectRatio> list_a=[
    new AspectRatio(
      //3:比20
      aspectRatio:16/9,
      child:new Container(
        color: Colors.green,
      ) ,
    )
  ];
  Widget getw(){
    return new   Stack(
      fit: StackFit.loose,
      alignment: Alignment.topRight,
      children:list_a,
    );
  }
}



