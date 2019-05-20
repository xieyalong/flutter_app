import 'package:flutter/material.dart';
class ViewRichText{
Widget initPage(){
  return new RichText(
      text:new TextSpan(
        text: 'nihao',
        style: new TextStyle(
          color: Colors.amber,
          fontSize: 20,
          //文字样式
          fontStyle: FontStyle.italic,
          //文字粗细
          fontWeight: FontWeight.w500,
        ),
          //拼接字符串
          children: [
            new TextSpan(
              text: ',你也好',
              //如果子text不设置样式，跟随母样式走
              style: new  TextStyle(color: Colors.red,fontStyle: FontStyle.normal),
            ),
            new TextSpan(
              text: ',你妈好',
              style: new  TextStyle(color: Colors.blue),
            )
          ]
      ),

  );
}
}
