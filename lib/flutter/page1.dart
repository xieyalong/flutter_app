import 'package:flutter/material.dart';
import 'page2.dart';
import 'User.dart';
import 'Message.dart';
class page1{
  page1(){
  }
  Widget initPage(){
    //跳转时Navigator需要Builder,但MyApp没有Builder
    return new Builder(
      builder: (context)=> new Center(
      child:new  RaisedButton(
        child: new Text('跳转到'),
        onPressed: (){
          //context=Builder,如果不加Builder()输出的是MyApp
          print('>]context=$context');
          var $u=new User();
          $u.id=2;
          $u.name="谢亚龙";
          Navigator.push(context, MaterialPageRoute(
            //传递参数
              builder:(context)=> new page2('参数1','参数2ppp',$u)
          ) );
        },
      ),
    ),
    );
  }

}

