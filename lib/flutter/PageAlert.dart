import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'UserModel.dart';
class PageAlert extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new PageAlertState();
  }
}
class PageAlertState extends State<PageAlert>{
  /*
  获取dialog选中的返回值
   */
  Future  _showDilaog() async{
    bool result=await showDialog(
      barrierDismissible: false,
        context: context,
        builder:(BuildContext context){
          return  AlertDialog(
            //标题
            title:Text('标题'),
            content: Text('内容'),
            actions: <Widget>[
              FlatButton(
                  onPressed: (){
                    Navigator.pop(context,false);
                  },
                  child: Text('关闭')
              ),
              FlatButton(
                  onPressed: (){
                    Navigator.pop(context,true);
                    //如果有数据 在这里刷新页面
                    setState(() {

                    });
                  },
                  child: Text('确认')
              )
            ],
          );
        }
    );
    //输出返回值
    print(">] dialog result=${result}");
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

