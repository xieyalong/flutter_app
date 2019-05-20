import 'package:flutter/material.dart';
import 'package:flutter_app/model/UserModel.dart';

class ViewListView{
  List<UserModel> list;
  ViewListView(){
    initData();
  }
  Widget initPage(){
    return ListView.builder(
      itemCount: list.length,
      //直接调用item方法，也是变量
      itemBuilder: item,
    );
  }
  void initData(){
    list=new  List<UserModel>();
    for(int i=0;i<5000;i++){
      list.add(new UserModel(i+1, '张三$i', '海淀$i'));
    }
  }
  /*
  item虽然是方式 这个事就也是变量
   */
  Widget item(BuildContext context, int index){
    print('>]$list');
    return  new Container(
        child:new Column(children: <Widget>[
          new Row(
            children: <Widget>[
              new Text('name:'+list[index].name,
                style: new TextStyle(
                  color:getColor(index),
                ),
              ),
              new Container(
                width: 100,
                height: 80,
                child:Image.network(list[index].url),
              ),
            ],
          ),
//          new Padding(
//              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
//              child: new Divider(color: Colors.lightBlue,)
//          )
//          new Expanded(child: new Container(height: 10,color: Colors.lightBlue,)),
        new Container(height: 5,color: Colors.lightBlue,margin: EdgeInsets.fromLTRB(20, 0, 20, 0),),
        ],
        )

    );
  }
  // color:index%2==0?Colors.blue:Colors.amber 三元表达式也可以
  Color getColor(int index){
    if(index%2==0){
      return Colors.blue;
    }
    return Colors.deepOrange;
  }

}

