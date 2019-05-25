import 'package:flutter/material.dart';

class PageFormField extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new PageFormFieldState();
  }
}
class PageFormFieldState extends State<PageFormField>{
  /*
  需求：
  默认是不验证的的autovalidate=false
  当提交时在验证，通过gk.currentState.validate()判断
  验证正确时，在把警告关闭autovalidate=true
   */
  bool autovalidate=false;
  //管理表单的数据
  var gk=GlobalKey<FormState>();

  String _name,_pwd;
  /*
  当提交的时候在验证
   */
  void sumtiData(){
    if(gk.currentState.validate()){
      //保存表单里面填写的数据
      gk.currentState.save();
      print('>]name=${this._name},pwd=${this._pwd}');
    }else{
      setState(() {//刷新页面
        //打开表示
        autovalidate=true;
      });
    }
  }

  String vdName(String v){
      if(v.isEmpty){
        return '用户名不能为null';
      }
      return null;
  }
  String vdPwd(v){
    if(v.isEmpty){
      return '密码不能为null';
    }
    return null;
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
            Text('输入的内容=$_name----$_pwd'),
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
              //验证输入是否合法
              validator: vdName,
              autovalidate: autovalidate,
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: '密码',
                helperText: ''
              ),
              //输入框内容不可见，会出现。。。
              obscureText: true,
              onSaved: (v){
                this._pwd=v;
              },
              //在输入框下方显示
              validator: vdPwd,
              autovalidate: autovalidate,
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


