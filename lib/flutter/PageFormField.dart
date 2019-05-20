import 'package:flutter/material.dart';

class PageFormField extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new PageFormFieldState();
  }
}
class PageFormFieldState extends State<PageFormField>{
  //管理表单的数据
  var gk=GlobalKey<FormState>();

  String _name,_pwd;
  //按钮提交获取的数据
  void sumtiData(){
    //保存表单里面填写的数据
    gk.currentState.save();
    print('>]name=${this._name},pwd=${this._pwd}');
  }
  @override
  Widget build(BuildContext context) {
    /**
     * form组件
     */
    return Form(
      key: gk,
      child:  Container(
        color: Colors.white,
        margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            /*
            TextFormField这个也是输入框
             */
            TextFormField(
              /*
             效果为：
             “输入内容标题
             这是输入文字的地方
             下划线”
              */
              decoration: InputDecoration(
                labelText: '名称',
              ),
              //v=输入框内的数据
              onSaved: (v){
                print('>=onSaved=${v}');
                this._name=v;
              },
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: '密码',
              ),
              //输入框内容不可见，会出现。。。
              obscureText: true,
              onSaved: (v){
                this._pwd=v;
              },
            ),
            //按钮和上边两个输入框的距离
            SizedBox(
              height: 30,
            ),
            RaisedButton(
              //背景颜色
              color: Colors.deepOrangeAccent,
              //阴影覆盖区
              elevation: 10.0,
              child: Text('提交'),
//            单机事件
              onPressed: sumtiData,
            ),
          ],
        ),
      ),
    );
  }

}


