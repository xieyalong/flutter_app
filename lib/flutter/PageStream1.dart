import 'dart:async';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'UserModel.dart';
class PageStream1 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new PageStream1State();
  }
}
class PageStream1State extends State<PageStream1>{
  /*
  导入import 'dart:async';
  功能：暂停，恢复，取消监听
   */
  StreamSubscription _streamSubscription;
  void initStream(){
    print('启动stream');
    Stream<String> _stream=Stream.fromFuture(getData());
    /*
    Stream监听数据 获取getDate里面的数据
    onData：获取的数据
    onDone:获取完毕
    onError：错误处理
     */
    _streamSubscription= _stream.listen(onData,onError:onError,onDone:onDone );
  }
  //从网络上获取的数据
  Future<String> getData()async {
    //延迟3秒后会在stream上出现一个数据
    await Future.delayed(Duration(seconds: 5));
    return '数据1';
//    throw '错误';
  }
  //输出数据
  void  onData(String data){
    print(data);
  }
  void onError(error){
    print('error=${error}');
  }

  void onDone(){
    print('onDone');
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        child:Row(
          children: <Widget>[
            RaisedButton(onPressed: (){
              initStream();
            },
              child: Text('开始'),
            ),
            RaisedButton(
                onPressed:(){
                  print('暂停订阅');
                  _streamSubscription.pause();
                },
                child:Text('暂停订阅')
            ),
            RaisedButton(
                onPressed:(){
                  print('恢复订阅');
                  _streamSubscription.resume();
                },
                child:Text('恢复订阅')
            ),
            RaisedButton(
                onPressed:(){
                  print('取消订阅');
                  _streamSubscription.cancel();
                },
                child:Text('取消订阅')
            ),
          ],
        ) ,
      ),
    );
  }

}


