import 'package:flutter/material.dart';
import 'Page2Navigator.dart';
import 'PassArgumentsScreen.dart';
import '../util/NavigatorUtil.dart';
class Page1Navigator extends StatelessWidget{
  static const routeName = '/Page1Navigator';
  @override
  Widget build(BuildContext context) {
    print('------page1------');
    print( ModalRoute.of(context));
    return new Scaffold(
        appBar: AppBar(title: Text('page1页面'),),
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
    print(ModalRoute.of(context));
    return Container(
      child: RaisedButton(
          child: Text("page1页面"),
          onPressed: (){
            NavigatorUtil.getInstance().pushNamed(context, Page2Navigator.routeName);
          }
      ),
    );
  }
}

