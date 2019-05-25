import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'UserModel.dart';
class PageBottomSheetDialog2 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new PageBottomSheetDialogState2();
  }
}
class PageBottomSheetDialogState2 extends State<PageBottomSheetDialog2>{
  var _globalKey=GlobalKey<ScaffoldState>();
  void _bottomDialog(){
    _globalKey.currentState.showBottomSheet((BuildContext context){
      return  BottomAppBar(
        child: Container(
          color: Colors.amber,
          height: 200,
          width: double.infinity,
          padding: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              Icon(Icons.build),
              SizedBox(height: 20,),
              Text('选A'),
              SizedBox(height: 20,),
              Text('选B'),
              SizedBox(height: 20,),
              //剩余的都是它的宽度
              Expanded(
                  child:RaisedButton(
                    //如果是个新页面，点击回退按钮也会自动消失
                    child: Text('底部弹出框,点击关闭',textAlign: TextAlign.right,),
                    onPressed: (){
                      Navigator.pop(context);
                    },
                  )
              ),
            ],
          ),
        ),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      key:_globalKey ,
      body: Column(
        children: <Widget>[
          RaisedButton(
              child: Text('弹出'),
              onPressed:_bottomDialog
          ),
        ],
      ),
    );
  }

}

