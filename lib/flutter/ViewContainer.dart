import 'package:flutter/material.dart';
class ViewContainer{
  Widget initPage(){
    return new Container(
      color: Colors.grey,
      alignment: Alignment.center,
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Container(
            height:100,
            width: 100,
            decoration: new BoxDecoration(
                color: Colors.green,
                shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage(
                      'images/a.jpeg',
                  ),
                fit: BoxFit.fill,
              )
            ),
          ),
          new Container(
            child: new Text('反反复复'),
            height: 100,
            width:100,
            decoration: BoxDecoration(
              /*
              使用BoxDecoration的color（背景颜色）
              必须关掉Container里面的color
               */
//              color: Colors.red,
              /*
                  渐变色
                正方形以圆形右上角往右下角渐变
               gradient: SweepGradient(colors: [Colors.lightBlue,Colors.deepOrange,Colors.amber])
                以圆心往外渐变
                gradient:RadialGradient(colors: [Colors.lightBlue,Colors.deepOrange,Colors.amber])
               */
                gradient:LinearGradient( colors: [Colors.lightBlue,Colors.deepOrange,Colors.amber]),
                /*
                同时设置4个边
                border: Border.all(width: 10,color: Colors.green)
                分别设置4个边框
                 */
                border: Border(
                  left: BorderSide(width: 10.0, color: Colors.green),
                  right: BorderSide(width: 10.0, color: Colors.green),
                  bottom: BorderSide(width: 10.0, color: Colors.green),
                ),
                /*
                同时设置4个圆角
                  borderRadius: BorderRadius.all(Radius.circular(10))
                  //单独设置1边框
                   border: Border(
                    top: new BorderSide(
                      color: Colors.red,
                      width: 5,
                      style: BorderStyle.solid,
                    )
                )
                分别设置4个角
                 */
                borderRadius: const BorderRadius.only(
                  topLeft:Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                )
            ),

          ),
          new Container(
            child: new Text('containerA啊啊啊'),
            margin:EdgeInsets.fromLTRB(0, 100,0, 0),
            height: 100,
            width:100,
            decoration: new BoxDecoration(
                color: Colors.blue,
                //单独设置1边框
                border: Border(
                    top: new BorderSide(
                      color: Colors.red,
                      width: 5,
                      style: BorderStyle.solid,
                    )
                ),
                /*
                 阴影
               */
                boxShadow:[
                  new BoxShadow(
                      color: Colors.amber,
                      //阴影样式
                      blurRadius: 10,
                      //阴影位移的位置
                      offset: Offset(2, 3),
                      //阴影覆盖的范围
                      spreadRadius: -5
                  )
                ],
                /*
              渐变色
               */
              gradient: LinearGradient(
                  colors: [
                    Colors.amber,
                    Colors.red,
                    Colors.green,
                  ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
                /**
                 * 设置背景图片
                 */
                image: DecorationImage(
                    image: AssetImage('images/a.jpeg'),
                    fit: BoxFit.cover,
                    //图片以那个方位为中心显示
                    alignment: Alignment.topRight,
                    //滤镜
                    colorFilter: ColorFilter.mode(
                       //滤镜颜色
                        Colors.indigoAccent[400].withOpacity(0.5),
                        //滤镜混合模式
                        BlendMode.darken
                    )
                ),
                /*
              圆形图片
              shape: BoxShape.circle
              方形图片
              shape: BoxShape.rectangle
               */
                shape: BoxShape.circle,
            ),
          ),
        ],
      ),
    );
  }
}
