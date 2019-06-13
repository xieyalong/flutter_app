import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
class  WebViewPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new WebViewPageState();
  }
}
class WebViewPageState extends State<WebViewPage>{
  @override
  Widget build(BuildContext context) {
       return new WebviewScaffold(
        url: "https://www.baidu.com/",
         //设置appBar
         appBar: new AppBar(
           title: new Text("Widget webview"),
         ),
         scrollBar: true,
    );
  }
}
