import 'package:flutter/material.dart';

class PageTextField extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new PageTextFieldState();
  }
}
class PageTextFieldState extends State<PageTextField>{
  var _str;
  void updateView(var str){
    /*
    刷新页面
     */
    setState(() {
      this._str=str;
    });
  }
  /*
  控制器 和onChanged类似，只要输入框内有变化就会运行
   */
  var tec=TextEditingController();
  /*
  PageTextFieldState初始化
   */
  @override
  void initState() {
    super.initState();
    //初始值
//    tec.text='你好';
    //文本框有变化时候就会执行这个事件
    tec.addListener((){
      //监听时时改变的数据
      updateView(tec.text);
      print('>]监听器=${tec.text}');
    });
  }
  /*
  销毁
   */
  @override
  void dispose() {
    super.dispose();
    //销毁控制器，不然会浪费资源
    tec.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('输入的是=$_str'),
          /*
          默认有个下划线
           */
          TextField(
            /*
            样式
             */
            decoration:InputDecoration(
              //没有内容就会显示
              hintText: '请输入账号',
              //在左边显示
              icon: Icon(Icons.add),
              //靠左在文本框的上部
              labelText: 'title',
              /*
                  //没有下划线
                   border:InputBorder.none,
                   //设置4个边
                   OutlineInputBorder
                   */
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5))
              ),
              // 显示背景 默认为灰色
              filled: true,
              //背景颜色
              fillColor: Colors.deepOrange[600],
            ),
            /*
            监听改变内容 v=输出的值
            或者：
            onChanged: updateView,
             */
            onChanged: (v){
              updateView(v);
              debugPrint('>]onChanged=$v');
            },
            /*
              按下键盘的确定(回车)按钮后执行
              v=输出的值
             */
            onSubmitted: (v){
//              updateView(v);
              debugPrint('>]onSubmitted=$v');
            },
            controller: tec,
          )
        ],
      ),
    );
  }

}


