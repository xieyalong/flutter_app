import 'package:flutter/material.dart';
class Page1Navigator extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:ThemeData(
        primaryColor: Colors.amber
      ) ,
      home: new Scaffold(
          appBar: new AppBar(
            title: new Text('标题'),
          ),
          body:Theme(
              data: ThemeData(
                primaryColor: Colors.black
              ),
              child:WidgetTheme()
          )
      ),
    );
  }
}
class WidgetTheme extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(color: Theme.of(context).primaryColor,);
  }
}

