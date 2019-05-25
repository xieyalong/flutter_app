import 'package:flutter/material.dart';

class PageButton2 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new PageButtonState();
  }
}
class PageButtonState extends State<PageButton2>{

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        floatingActionButton:f_extended,
      /*
      centerDocked:显示在中间和bottomNavigationBar叠加在一起
      centerFloat：bottomNavigationBar不叠加，显示在中间
      endDocked：右下角
      startTop：左上角
      endTop:右上角
       */
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      /*
      调整floatingActionButtonLocation高度
       */
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 80,
        ),
        shape: AutomaticNotchedShape(
            Border(
           bottom: BorderSide(width: 200,color: Colors.lightGreen)
        )),
      ),
      body: Container(color: Colors.deepOrangeAccent[200],),
    );
  }
  /*
  矩形边
   */
  var floatingActionButton=FloatingActionButton(
      child: Icon(Icons.add),
      //控制和下一层之间的高度
      elevation: 0.0,
      backgroundColor: Colors.deepOrange[200],
      //按钮形状
      shape: BeveledRectangleBorder(
        /*
            BorderRadius.circular(10)：斜角矩形
             */
        borderRadius: BorderRadius.circular(30),
      ),
      onPressed: (){

      }
  );
  /*
  圆角
   */
  var f_extended=FloatingActionButton.extended(
    onPressed: null,
    label: Text('添加'),
    icon: Icon(Icons.add),
  ) ;

}


