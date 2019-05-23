import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
class PageDialog extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new PageDialogState();
  }
}
class PageDialogState extends State<PageDialog>{
  @override
  Widget build(BuildContext context) {

    return Column(
      children: <Widget>[
        RaisedButton(
          child: Text('tanchu'),
          onPressed: (){
            print('>]');
            showDialog(
                context: context,
                builder:(BuildContext context){
                  return  SimpleDialog(
                    //标题
                    title:Text('这是弹出框'),
                    children: <Widget>[
                      new Text('内容1'),
                      //关闭按钮
                      new RaisedButton(
                          child: Text('关闭按钮'),
                          onPressed: (){
                            Navigator.pop(context);
                          }
                      )
                    ],
                  );
                }
            );
          },
        ),
      ],
    );
  }

}

