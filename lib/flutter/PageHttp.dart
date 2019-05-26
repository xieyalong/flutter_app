import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
class PageHttp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new PageHttpState();
  }
}
class PageHttpState extends State<PageHttp>{

  @override
  Widget build(BuildContext context) {
    //实例化Provider
    return  Column(
      children: <Widget>[
        RaisedButton(
            child: Text('http'),
            onPressed: (){
              get();
            }
        ),
      ],
    );
  }
  void  get() async{
    String url="http://hq.sinajs.cn/list=sh601006";
    var response=await http.get(url);
    //状态码
    print(response.statusCode);
    //数据
    print(response.body);

  }
  void post()async{
    http.post(url)
  }
}


