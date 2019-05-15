import 'package:flutter/material.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var statck=initPage();
    var  circleAvatar=initCircleAvatar();
    var  _alignment=init_alignment();
    return MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('标题111'),
        ),
        body:statck,
      ),
    );
  }
  Widget init_alignment(){
    return new Container(
      color: Colors.lightBlue,
      height: 100,
      alignment: FractionalOffset(0,0.5),
      child: new Text("ssssss"),
    );
  }
  Widget initCircleAvatar(){
    return new CircleAvatar(
      backgroundImage: NetworkImage("http://pic29.nipic.com/20130601/12122227_123051482000_2.jpg"),
      radius: 100,//设置半径
    );
  }
  Widget initPage(){
    return new Container(
        alignment: Alignment.center,
        color: Colors.lightBlue,
        child: new Stack(
          //FractionalOffset：最小是0，最大是1
          //x设置左右的位置，
          // y设置上下的位置
          // x=0.5在中间，y=1在最下面
          alignment:  FractionalOffset(0.5, 0.8),
          children: <Widget>[
            //圆形控件
            new CircleAvatar(
              backgroundImage: NetworkImage("http://pic29.nipic.com/20130601/12122227_123051482000_2.jpg"),
              radius: 100,//设置半径
            ),
            new Container(child: new Text("设置",style: new TextStyle(color: Colors.lightBlue,fontSize: 18,),),),
            new Container(
              child: new Text("设置2",style: new TextStyle(color: Colors.lightBlue,fontSize: 18,),),
              margin: EdgeInsets.fromLTRB(0,100,0, 0),
            )
          ],
        ));
  }
  Widget init_center(){
    return Container(
      alignment: Alignment.center,
      color: Colors.lightBlue,
      child: new Text("你好"),
      );
  }
}
