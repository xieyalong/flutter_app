import 'package:flutter/material.dart';
class view_listTile{
  Widget initPage(){
    return new ListTile(
      //title widget
      title: new Container(child:new Text("中间布局上部") ,),
      leading:new Text("左边布局") ,
      subtitle: new Text("中间布局下部",style: new TextStyle(color:Colors.green ),) ,
      trailing: new Text("右边布局") ,
      onLongPress:() {
        print(">]常按事件");
      },
      onTap: (){
        print(">]单机事件");
      },
      selected: false,
      //是否禁止点击
      enabled: false,
      //设置内部padding
//      contentPadding: EdgeInsets.all(10),
      //中间是否密集 基本没有什么用
      dense: false,
    //false=中间和尾部顶部和左边对齐，true==中间和尾部的中间和左边对齐
      isThreeLine: true,
    );
  }
}
