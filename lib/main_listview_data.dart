/**
 * 口令：一切皆组件
 */
//样式 ui库
import 'package:flutter/material.dart';

//调用MyApp函数传递数据
void main() => runApp(MyApp(
  //arr 必须和声明的一样
    arr:new List<String>.generate(10000, (i)=>"Item $i")
));

//继承StatelessWidget
class MyApp extends StatelessWidget {
  //声明变量
  List<String> arr;
  /**
   * 构造函数
   * required：要用MyApp 必须传递一个数 必须
   * :super(key:key) 属于dart语言
   */
  MyApp({Key key,@required this.arr}):super(key:key);

  @override
  Widget build(BuildContext context) {
// MaterialApp也是组件 一切皆组件
    return new MaterialApp(
      //Scaffold脚手架 有了这个可搭建里面的内容了
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('数据加载listview'),
        ),
        body: Container(
          //纵向的listview
            child:ListView.builder(
                scrollDirection: Axis.vertical,
                //代表生成多少条
                itemCount: arr.length,
                //显示内容
                itemBuilder: (context,index){
                  return new MyAdapter(item: '${arr[index]}');
                }
            )
        ),
      ),
    );
  }

}
class MyAdapter extends StatelessWidget{
  String item;
  MyAdapter({Key key,@required this.item}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return new Container(
      child:new Text(
        '${item}',
        style: new TextStyle(
          color: Colors.green,
          fontSize: 16,
        ),
      ) ,
      padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
    );
  }
}

