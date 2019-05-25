import 'package:flutter/material.dart';

class PageButton extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new PageButtonState();
  }
}
class PageButtonState extends State<PageButton>{

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        floatingActionButton:FloatingActionButton(
            onPressed: null,
          child: Icon(Icons.alarm_add),
        ),
      /*
      centerDocked:显示在中间和bottomNavigationBar叠加在一起
      centerFloat：bottomNavigationBar不叠加，显示在中间
      endDocked：右下角
      startTop：左上角
      endTop:右上角
       */
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      body: Container(color: Colors.deepOrangeAccent[200],),
    );
  }
 

}


