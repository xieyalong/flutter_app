import 'package:flutter/material.dart';
import 'Page3Navigator.dart';
import 'PassArgumentsScreen.dart';
class Page1Navigator extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body:Theme(
            data: ThemeData(
                primaryColor: Colors.black
            ),
            child:WidgetTheme()
        )
    );
  }
}
class WidgetTheme extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
          onPressed: (){
            Navigator.pushNamed(context, PassArgumentsScreen.routeName,arguments:{
              "name":"张三",
              "age":5
            });
          }),
    );
  }
}

