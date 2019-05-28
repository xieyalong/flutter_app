import 'package:flutter/material.dart';
class PageAnnimation2 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new PageAnnimationState();
  }
}
class PageAnnimationState extends State<PageAnnimation2> with TickerProviderStateMixin{
  String _text='渐渐变大';
  AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller=new  AnimationController(
      /*
        初始值
       */
        value: 30.0,
        //动画最小帧数
        lowerBound: 30.0,
        //动画最大帧数
        upperBound:100 ,
        //动画持续时间
        duration: Duration(milliseconds: 3000),
        /*
        作用禁止屏幕外消耗资源,要“with TickerProviderStateMixin”
        this=TickerProviderStateMixin
         */
        vsync: this
    );
    /*
      运行监听
      每输出一个数字代表一帧
      输出的次数取决于设置的持续的时间和每秒的帧数
       */
    _controller.addListener((){
      print('addListener${_controller.value}');
      if(_controller.lowerBound==_controller.value){
        _text='渐渐变大a';
      }else if(_controller.upperBound==_controller.value){
        _text='渐渐变小v';
      }
      //_controller.value不断变化，刷新页面
      setState(() {});
    });
    /*
       状态监听
     */
    _controller.addStatusListener((AnimationStatus status){
      print('addStatusListener=${status}');

      if(AnimationStatus.forward==status){//正向

      }else if(AnimationStatus.reverse==status){//反向

      }else if(AnimationStatus.dismissed==status){//反向结束

      }else if(AnimationStatus.completed==status){//正向结束

      }
    });
  }
  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body:Stack(
          fit: StackFit.loose,
          alignment: Alignment.topRight,
          children: <Widget>[
            IconButton(
                icon: Icon(Icons.ac_unit,color: Colors.red,),
                //通过_controller.value变化，改变图标的大小
                iconSize: _controller.value,
                onPressed: (){

                }),
            Align(
                alignment: Alignment.center,
                child:RaisedButton(
                    child: Text('${_text}=${_controller.value}'),
                    onPressed: (){
                      switch(_controller.status){
                      //正向动画完成
                        case AnimationStatus.completed:
                        //开始动画 反向
                          _controller.reverse();
                          break;
                        default:
                        //开始动画 正向
                          _controller.forward();
                      }
                    }
                )
            ),
          ],
        )
    );
  }

}


