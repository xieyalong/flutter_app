//import 'dart:_http';

import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import 'package:scoped_model/scoped_model.dart';
import 'dart:io' as dio;
import 'package:crypto/crypto.dart' as crypto;
class PageHttp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new PageHttpState();
  }
}
class PageHttpState extends State<PageHttp>{
  String _str='';
  @override
  Widget build(BuildContext context) {
    //实例化Provider
    return  Column(
      children: <Widget>[
        Text('${_str}'),
        RaisedButton(
            child: Text('http-get'),
            onPressed: (){
              get();
            }
        ),
        RaisedButton(
            child: Text('http-post'),
            onPressed: (){
              post();
            }
        ),
        RaisedButton(
            child: Text('生成json'),
            onPressed: (){
            }
        ),
      ],
    );
  }


  void  get() async{
    String url="https://jsonplaceholder.typicode.com/posts/1";
    var response=await http.get(url);
    //状态码
    print(response.statusCode);
    //数据
    print(response.body);
    if(200==response.statusCode){
      Map<String, dynamic> map=convert.json.decode(response.body);
      print('>]title=${map['title']}');
      this._str=response.body;
      setState(() { });
    }else{

    }
  }

  void post()async{
//    String url_data='{"root":{"body":{},"head":{"action":"10003","admin_id":"","channel_id":"","client_id":"Android","code":0,"device_id":"","os":"Android9","screen":"1808*1080","session_id":"","softname":"1.4.0","softver":"7","text":"","timestamp":"1557735414","ua":"HUAWEI-MHA-AL00","user_id":""}}}';
    String url_data='9rhRdvUc07x7+2as54DNIXA1a0KiiWLCjnZMdHiH5FIiRGMcn2PyL3TmdkjhiIKcdG8c/ZCLhxlT'+
        '436NrFx+NP+XBbxA8PBB51KnwFqBi4HqSjUMh4lWEVmJHnL5kQXb7PUY4rhSXfVjSCj6oEqCNbAs'+
        'bADlUxnIcqEuSVJC8kcr/6bfWYffDV0IqVEywF8mt7crNPKRW9hqt0fQgMjdJfFMg/JA4/msdaaU'+
        'Wfai8x/D9MnsWrOD04vTXIG7R7OB+ZUX7OTugX/V0hTJlPnvvtz93piUUXMHma3tNsa4WCcLBgEz'+
        '0wIXU0T/6YeTqhvYhZ5rRRXDNyMk/nssHWcD/XcbrNSS7P8C0kuQy2G2+VirkwnQAdVZMGUJXehC'+
        'jdHWgiBofEhAQ0x0lShWwvrr4uuISnqJSbkvvMf/RzXhlF4ZhUzvX2bD02Vk9szPfPvqe+sWIPtB'+
        'Mggg7X/s61OGekjA0Rfotb5pGDSpElEVjvEbcnx5HkcZqPK62tjdSp5ffj4M9uhxkkw=';
    String url="https://omoapi.yuanxinkangfu.com/capp/api/api.html";
    url_data='{"id": 1,"name": "Pest_Rose","email": "Pest_Rose@learnku.com", "avatar": "http://larabbs_upgrade.test/uploads/images/avatars/201904/23/1_1556002565_tiq0V2jMXY.jpg","introduction": "Saepe est nulla tempora ab.","bound_phone": true,"bound_wechat": false,"last_actived_at": "2019-04-08 18:23:52","created_at": "2019-04-08 18:23:52","updated_at": "2019-04-23 15:08:52"}';
      url="192.168.0.149/api/user";
    Map<String, String> headers=new Map();
    headers['Authorization']='Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC9sYXJhYmJzX3VwZ3JhZGUudGVzdCIsImlhdCI6MTU1NTk0MDE3MSwiZXhwIjoxNTg3NDc2MTcxLCJuYmYiOjE1NTU5NDAxNzEsImp0aSI6IlBiNkk1czNpMDMzb1ljdm4iLCJzdWIiOjEsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ._O2cnIoNVR9dwbDPCXNMu9q5LocrrxZfYmIsWOIc9b0';
    var response=await http.post(url,headers: headers,body: url_data);
//    //状态码
    print(response.statusCode);
//    //数据
    print(response.body);

  }
}
class  UserBean extends Model{
  final int userId;
  final int id;
  final String title;
  final String body;

  UserBean(this.userId, this.id, this.title, this.body);

}



//9rhRdvUc07x7+2as54DNIXA1a0KiiWLCjnZMdHiH5FIiRGMcn2PyL3TmdkjhiIKcdG8c/ZCLhxlT
//436NrFx+NP+XBbxA8PBB51KnwFqBi4HqSjUMh4lWEVmJHnL5kQXb7PUY4rhSXfVjSCj6oEqCNbAs
//bADlUxnIcqEuSVJC8kcr/6bfWYffDV0IqVEywF8mt7crNPKRW9hqt0fQgMjdJfFMg/JA4/msdaaU
//Wfai8x/D9MnsWrOD04vTXIG7R7OB+ZUX7OTugX/V0hTJlPnvvtz93piUUXMHma3tNsa4WCcLBgEz
//0wIXU0T/6YeTqhvYhZ5rRRXDNyMk/nssHWcD/XcbrNSS7P8C0kuQy2G2+VirkwnQAdVZMGUJXehC
//jdHWgiBofEhAQ0x0lShWwvrr4uuISnqJSbkvvMf/RzXhlF4ZhUzvX2bD02Vk9szPfPvqe+sWIPtB
//Mggg7X/s61OGekjA0Rfotb5pGDSpElEVjvEbcnx5HkcZqPK62tjdSp5ffj4M9uhxkkw=
