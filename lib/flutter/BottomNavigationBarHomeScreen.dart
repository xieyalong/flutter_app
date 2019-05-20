import 'package:flutter/material.dart';

class BottomNavigationBarHomeScreen extends   StatefulWidget {
  @override
  State<StatefulWidget> createState() => MainPageState();
}

class MainPageState extends State<BottomNavigationBarHomeScreen> {
  int _currentIndex=2;
  List<Widget> _pages= [
    Page("第一页1111"),
    Page("第二页"),
    Page("第三页")
  ];
  PageController _controller;

  @override
  void initState() {
    super.initState();
    //初始化是第几页
    _controller = PageController(initialPage: _currentIndex);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    body: PageView.builder(
//        physics: NeverScrollableScrollPhysics(),//viewPage禁止左右滑动
      //监听每次滑动
        onPageChanged: _pageChange,
        controller: _controller,
        itemCount: _pages.length,
//        也可以这样写itemBuilder: (context, index) => _pages[index]
        itemBuilder: (context, index){
          return _pages[index];
        },
    ),
    bottomNavigationBar: BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: onTap,
      items: getItems(),
    ),
  );

  List<BottomNavigationBarItem> getItems() {
    return [
      BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
      BottomNavigationBarItem(icon: Icon(Icons.adb), title: Text("Adb")),
      BottomNavigationBarItem(icon: Icon(Icons.person), title: Text("Person"))
    ];
  }

  void onTap(int index) {
    print('>]点击事件');
    _controller.jumpToPage(index);
  }

  void _pageChange(int index) {
    print('>]onPageChanged');
    if (index != _currentIndex) {
      setState(() {
        _currentIndex = index;
      });
    }
  }
}

/*
页面
 */
class Page extends StatefulWidget {
  String _title;

  Page(this._title);

  @override
  State<StatefulWidget> createState() => PageState();
}

class PageState extends State<Page> with AutomaticKeepAliveClientMixin {

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child:new RaisedButton(
            child: Text(widget._title),
              onPressed: (){//页面跳转不会被重建
                Navigator.push(context, new MaterialPageRoute(builder: (context) => new NewPage()));
              }
          ),
      ),
    );
  }

}
class NewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text("新的界面"),
    ),
    body: Center(
      child: Text("我是一个新的界面"),
    ),
  );
}
