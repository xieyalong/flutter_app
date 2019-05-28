import 'package:flutter/material.dart';
class PageAnnimation3 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new PageAnnimationState();
  }
}
class PageAnnimationState extends State<PageAnnimation3> with TickerProviderStateMixin{
  String _text='渐渐变大';
  //监控状态
  AnimationController _controller;
  //控制大小
  Animation _animation;
  //控制颜色
  Animation _animationColor;
  @override
  void initState() {
    super.initState();
    _controller=new  AnimationController(
        //动画持续时间
        duration: Duration(milliseconds: 1000),
        /*
        作用禁止屏幕外消耗资源,要“with TickerProviderStateMixin”
        this=TickerProviderStateMixin
         */
        vsync: this
    );
    /*
     //动画最小帧数
      //动画最大帧数
     */
    _animation=Tween(begin: 30.0,end: 100.0).animate(_controller);
    _animationColor=ColorTween(begin: Colors.red[100],end: Colors.red[900]).animate(_controller);
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
                icon: Icon(Icons.ac_unit,),//color: Colors.red,
                //通过_controller.value变化，改变图标的大小
                iconSize: _animation.value,
                //通过_animationColor.value 来改变颜色变化
                color:_animationColor.value ,
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


