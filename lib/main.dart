import 'package:flutter/material.dart';
import 'flutter/PageTest.dart';
import 'flutter/PageAnnimation.dart';
import 'flutter/WebViewPage2.dart';
import 'flutter/WebViewPage.dart';
void main() => runApp(MyApp());

class MyApp extends  StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
          body:Home(),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: 1,
            selectedItemColor: Colors.amber[800],
            //index=点击第几个
            onTap: (int index){
              print(index);
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text('Home'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.business),
                title: Text('Business'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.school),
                title: Text('School'),
              ),
            ]
        ),
      ),
    );
  }
}
class Home extends  StatelessWidget{
  @override
  Widget build(BuildContext context) {//此时的context=MyApp
    return  new Scaffold(
        body:WebViewPage()
    );
  }
}

