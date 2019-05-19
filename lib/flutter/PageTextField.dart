import 'package:flutter/material.dart';
class PageTextField extends StatefulWidget{
 @override
  State<StatefulWidget> createState() {
    return new PageTextFieldState();
  }
}
class PageTextFieldState extends State<PageTextField>{
  @override
  Widget build(BuildContext context) {
    final  textEditingController=new TextEditingController();
    @override
    Widget build(BuildContext context) {
      return new Scaffold(
          body:Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
//                color: Colors.lightGreen,
                  margin: EdgeInsets.all(20),
                  /*
                new TextField():默认有个下划线
                 */
                  child:  new TextField(
                    //样式
                    decoration: InputDecoration(
                      //在左边显示
                      icon: Icon(Icons.add),
                      //在icon文本框的上部
                      labelText: 'title',
                      //没有内容就会显示
                      hintText: '请输入账号',
                      /*
                    边框设置
                     InputBorder.none:没有下划线
                     设置4个边，颜色和主题颜色一样
                      border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5))
                     )
                     */
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5))
                      ),
                      //显示背景
                      filled: true,
                      //背景颜色
                      fillColor: Colors.deepOrange[600],
                    ),
                    //监听改变内容
                    onChanged: (v){
                      debugPrint('>]onChanged=$v');
                    },
                    //按下键盘确定按钮后执行
                    onSubmitted: (v){
                      debugPrint('>]onSubmitted=$v');
                    },
                  ),
                )
              ],) ,
          )

      );
    }
  }

}



