import 'package:flutter/material.dart';
import '../util/NavigatorUtil.dart';
import 'Page3Navigator.dart';
class Page2Navigator extends  StatelessWidget {
  static const routeName = '/Page2Navigator';
   final arguments;
  Page2Navigator({this.arguments});
//   Page2Navigator();
  @override
  Widget build(BuildContext context) {
print('------page2------');
print( ModalRoute.of(context));
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("page2页面"),
      ),
      body:RaisedButton(
          child: Text("page2页面"),
          onPressed: (){
            NavigatorUtil.getInstance().pushNamed(context, Page3Navigator.routeName);
          }),
    );
  }
}


//import 'package:flutter/material.dart';
//class Page2Navigator extends  StatefulWidget {
//  final arguments;
//  Page2Navigator({this.arguments});
//  @override
//  State<StatefulWidget> createState() {
//    return new Page2NavigatorState(arguments: arguments);
//  }
//}
//class Page2NavigatorState extends  State<Page2Navigator> {
//  final arguments;
//  Page2NavigatorState({this.arguments});
//  @override
//  void initState() {
//    super.initState();
//    print(">]arguments=${arguments}");
//  }
//  @override
//  Widget build(BuildContext context) {
//    return  new Scaffold(
//        appBar: new AppBar(
//          title: new Text("Page2Navigator"),
//        ),
//        body: RaisedButton(
//            child: Text("返回"),
//            onPressed: (){
////            Navigator.pop(context);
//              Navigator.pushNamed(context, "/page3");
//            })
//    );
//  }
//
//}
