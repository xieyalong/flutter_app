import 'package:flutter/material.dart';
class ViewColumn{
  Widget initPage(){
    return new Container(
      color: Colors.grey,
      width: 500,
      child:getw()
     );
  }

  Widget getw(){
    return new  Column(
      /*
        主轴：
      在Row里面主轴是横着的
      在column里面主轴是竖着的
      start：默认 子组件排列一起
       end：在末尾显示
       center：在中间显示,子组件排列一起
        spaceEvenly：平分居中
       spaceAround：分布在组件的周围,和平分差不多就是靠近中的组件
        spaceBetween：最前和最后的靠边，剩下的空间分配给中间的组件，中间组件平分
       */
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      /*
      交叉轴：
      在row里面它是纵向的
      在column里面是横向的
      start：在交叉方向的起始位置
      end：交叉方向的尾部
      center：在交叉方向的中间位置
       stretch:拉伸
       */
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        new SizedBox(
          width: 200,
          height: 300,
          child: new  Container(
            /*
            Alignment(-1, 0):靠左边
            Alignment(-0.8, 0)：不完全靠左边
            Alignment(0, -1)：靠上边
            Alignment(1, 0)：靠右边
            Alignment(0, 1),靠下边
            Alignment.topLeft：上方靠左，源码：Alignment(-1.0, -1.0)
            Alignment.topCenter:顶部居中
            Alignment.center：显示在中间
             */
            alignment: Alignment.topLeft,
            child: new Icon(Icons.ac_unit,color: Colors.green,),
            decoration: new BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(8),//圆角
            ),
          ),
        ),
//        new Container(height: 50,width: 50,color: Colors.red,),
//        new Container(height: 50,width: 50,color: Colors.black,),
//        new Container(height: 50,width: 50,color: Colors.amber,),
      ],
    );
  }
}
