import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'UserModel.dart';
class PageDialog extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new PageDialogState();
  }
}
class PageDialogState extends State<PageDialog>{
  /*
  获取dialog选中的返回值
   */
  Future  _showDilaog() async{
   UserModel result=await showDialog(
       barrierDismissible: false,
        context: context,
        builder:(BuildContext context){
          return  SimpleDialog(
            //标题
            title:Text('这是弹出框'),
            children: <Widget>[
              //关闭按钮
              new RaisedButton(
                  child: Text('关闭按钮'),
                  onPressed: (){
                    //关闭dialog并返回数据
                    UserModel u=new UserModel();
                    u.name="谢亚龙";
                    Navigator.pop(context,u);
                  }
              )
            ],
          );
        }
    );
   //输出返回值
    print(">] dialog result=${result.name}");
  }

  @override
  Widget build(BuildContext context) {
//  this.context=context;
    return Column(
      children: <Widget>[
        RaisedButton(
            child: Text('tanchu'),
            onPressed:_showDilaog,
        ),
      ],
    );
  }

}

