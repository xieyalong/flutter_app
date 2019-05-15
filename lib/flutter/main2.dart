import 'package:flutter/material.dart';
import 'User.dart';
void main() => runApp(MyApp());

class MyApp extends  StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Center(child: new HomeScreen()),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('子页面回调数据'),
      ),
      // We'll create the SelectionButton Widget in the next step
      body: new Center(child: new SelectionButton()),
    );
  }
}

/*
  自定义
   */
class SelectionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new RaisedButton(
      onPressed: () {

        _resultPage(context);
        print(">]context1=${context}");
      debugPrint(">]context2=${context}");
        var $str1='b';
        print('v='+$str1);
        String str3='c';
        print('v='+str3);
        String $str4='d';
        print('v='+$str4);
        Map<String,Object> map=new Map();
        map['a']="A";
        //对象输出只能使用$map
        print('map=$map---a1='+map['a']+'--a2=${map['a']}');
      },
      child: new Text('去子页面拿数据'),
    );
  }
  /*
     异步回调子页面
   */
  _resultPage(BuildContext context) async {
    final Map<String,Object> map = await Navigator.push(context,
      new MaterialPageRoute(builder: (context) => new SelectionScreen()),
    );
    User u=map['u'];
    //输出map={u: Instance of 'User', str: 谢亚龙},u.name=张三,谢亚龙
    print('>]map=${map},u.name='+u.name+',${map['str']}');

    }
}



class SelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('子页面'),
        ),
        body:new Center(child: new Padding(
          padding: const EdgeInsets.all(8.0),
          child: new RaisedButton(
            onPressed: () {
              var  $u=new User();
              $u.name="张三";
              var $map={'u':$u,'str':"谢亚龙"};
              Navigator.pop(context,$map);
            },
            child: new Text('把数据返回上一页'),
          ),
        ),
        )
    );
  }
}


