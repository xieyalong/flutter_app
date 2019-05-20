import 'package:flutter/material.dart';
class ViewText{
  Widget initPage(){
    return   new Container(
      width: 400,
      height: 200,
      color: Colors.green,
      child:   new  Column(
          children: <Widget>[
            Text.rich(
              TextSpan(
                text: 'Hello',
                // default text style
                children: <TextSpan>[
                  TextSpan(
                    text: ' 这 ',
                    style: TextStyle(fontStyle: FontStyle.normal,color: Colors.deepOrange),
                  ),
                  TextSpan(text: '是',
                      style: TextStyle(color: Colors.blue)
                  ),
                  TextSpan(
                    text: 'TextSpan',
                  ),
                ],
              ),
            ),
            new Container(
                height: 10,
                color: Colors.blue,
            ),
            new Text(
              "name adfd jsjdfsd 我知道",
              //显示在父组件左边
//        textDirection: TextDirection.ltr,
              //显示在父组件左边
              textDirection: TextDirection.rtl,
              style: new TextStyle(
                fontSize: 18,
//           fontWeight: FontWeight.bold,//粗体
                fontWeight: FontWeight.w100,//设置粗体大小
                color: Colors.black87,
                letterSpacing:0,//字母间隙
                wordSpacing: 30.0,//单词间隙
              ),
            )
          ]),
    );

  }
}


