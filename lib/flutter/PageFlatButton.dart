import 'package:flutter/material.dart';
class PageFlatButton extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new PageFlatButtonState();
  }
}
class PageFlatButtonState extends State<PageFlatButton>{
  int i=0;
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        child: Text('按钮${i}'),
        onPressed: (){
          i++;
          setState(() {

          });
          print(i);
        });

  }

}
