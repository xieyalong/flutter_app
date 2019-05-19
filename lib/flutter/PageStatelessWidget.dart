import 'package:flutter/material.dart';
/*
StatelessWidget:静态页面的类，页面一但赋值，页面内的数据就不会有变化
 */
class  PageStatelessWidget extends StatelessWidget{
  int count=0;
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: new AppBar(
        title: new Text('StatelessWidget'),
      ),
      body:Center(

        child: Chip(
            label: Text('$count')
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
          onPressed: (){
            //这里变量只会加
            count++;
            //输出的也是加后的，但Text('$count')页面不会变
            print('>]count=$count');
          }),
    );
  }
}