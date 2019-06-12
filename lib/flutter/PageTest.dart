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
  @override

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body:Stack(
          fit: StackFit.loose,
          alignment: Alignment.topRight,
          children: <Widget>[
            Container(
              color: Colors.amber,
              width: 500,
              height: 500,
              child:  AnimatedContainer(
                duration: Duration(
                    milliseconds: 10000,
                    seconds: 40,
                    days: 10,
                    hours: 4,
                    microseconds: 300,
                    minutes: 50
                ),
                color: Colors.red,
                curve: Curves.easeInCubic,
                height: 30,
                width: 30,
              ),
            )
           ,
            new Positioned(
              child:RaisedButton(onPressed: (){},child: Text('aaaaa'),),
              top: 200,
              left: 100,
            ),
          ],
        )
    );
  }

}


