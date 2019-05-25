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
  String _str='';
  @override
  void initState() {
    super.initState();
//进入页面的时候把数据放到stream里面
    Stream<String> _stream=Stream.fromFuture(getData());
    //监听数据 获取getDate里面的数据
    _stream.listen(onData);
  }
  //数据源
  Future<String> getData()async {
    //延迟3秒后会在stream上出现一个数据  定时器
    await Future.delayed(Duration(seconds: 3));
    return '数据1';
  }
  //获取数据
  void  onData(String data){
    _str=data;
    setState(() {});
    print(data);
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('${_str}')
          ]
      ),
    );
  }

}

