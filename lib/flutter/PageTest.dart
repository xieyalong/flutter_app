import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'UserModel.dart';
import 'dart:math' as math;
class PageTest extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {

    return new PageTestState();
  }
}
class PageTestState extends State<PageTest>{
  double _top=50;
  double _left=50;
  @override

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body:Stack(
          fit: StackFit.loose,
          alignment: Alignment.topRight,
          children: <Widget>[
            GestureDetector(
              onLongPressMoveUpdate: (m){
                //挪动雪花图标的位置
                _top=m.globalPosition.dy;
                _left=m.globalPosition.dx;
                setState(() { });
              },
              child: Container(height: double.infinity,width: double.infinity,color: Colors.amber,),
            ),
            new Positioned(
              child:new Icon(Icons.ac_unit,color: Colors.green,),
              top: _top,
              left: _left,
            ),
          ],
        )
    );
  }

}


