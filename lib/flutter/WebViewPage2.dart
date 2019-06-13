import 'package:flutter/material.dart';
import 'package:flutter_web_view/flutter_web_view.dart';
class  WebViewPage2 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new WebViewPageState2();
  }
}
class WebViewPageState2 extends State<WebViewPage2>{
  FlutterWebView flutterWebView=new FlutterWebView();
  @override
  void initState() {
    super.initState();
    //直接加载到页面
    flutterWebView.launch(
      "https://www.baidu.com/",
      headers: {
        "X-SOME-HEADER": "MyCustomHeader",
      },
      javaScriptEnabled: false,
      //右上角3个点
      toolbarActions: [
        new ToolbarAction("Dismiss", 1),
        new ToolbarAction("Reload", 2)
      ],
      barColor: Colors.green,
      tintColor: Colors.white,
    );
    //监听器
    flutterWebView.onToolbarAction.listen((identifier) {
      print(">]identifier=${identifier}");
      switch (identifier) {
        case 1:
          flutterWebView.dismiss();
          break;
        case 2:
//          reload();
          break;
      }
    });
    //监听器
    flutterWebView.listenForRedirect("mobile://test.com", true);
    //监听器 跳转网页的第一步
    flutterWebView.onWebViewDidStartLoading.listen((url) {
      print(">]onWebViewDidStartLoading=${url}");
    });
    //监听器
    flutterWebView.onWebViewDidLoad.listen((url) {
      print(">]onWebViewDidLoad=${url}");
    });
    //监听器
    flutterWebView.onRedirect.listen((url) {
      flutterWebView.dismiss();
      print(">]onRedirect=${url}");
    });
  }
  @override
  Widget build(BuildContext context) {
    return null;
  }

}
