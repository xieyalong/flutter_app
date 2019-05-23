import 'package:flutter/material.dart';
class PageMinWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new PageMinWidgetState();
  }
}
class PageMinWidgetState extends State<PageMinWidget>{
  double _i=0.0;
  bool b=false;
  @override
  Widget build(BuildContext context) {

    return Column(
      children: <Widget>[
      Container(
        height: 100,
      ),
        /*
        只设置value和onChanged只有简单的圆点和滑动条
         */
        Slider(
            value: _i,
            /*
            null=禁用状态
            v=滑动的值
             */
            onChanged: (v){
              _i=v;
              setState(() {
                //输出滑动当前值
                print('----刷新${_i}');
              });
            },
          //滑到的颜色
          activeColor: Colors.amber,
          //未滑到的颜色
          inactiveColor:Colors.grey ,
          //最大值
          max: 10,
          //最小值
          min: 0,
          //分隔10份 这样后面就没有一大串数字了
          divisions: 10,
          label: '${_i.toInt()}',
        ) ,
        Switch(
          //开关值，bool
          value: b,
          onChanged: (v){
            if(b){
              b=false;
            }else{
              b=true;
            }
            setState(() {
            });

          },
          activeColor: Colors.amber,
        ),

      ],
    );

  }

}

