import 'package:flutter/material.dart';

class PageToast extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new PageToastState();
  }
}
class PageToastState extends State<PageToast>{

  @override
  Widget build(BuildContext context) {

    return RaisedButton(
      onPressed: (){
        Scaffold.of(context).showSnackBar(SnackBar(
            content: Text('底部弹出'),
          backgroundColor: Colors.lightGreen,
        ));
      },
      child: Text('提交'),
    );
  }

}


