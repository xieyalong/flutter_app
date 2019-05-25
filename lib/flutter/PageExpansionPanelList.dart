import 'package:flutter/material.dart';
class PageExpansionPanelList extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new PageExpansionPanelListState();
  }
}
class PageExpansionPanelListState extends State<PageExpansionPanelList>{
  bool _isExpanded=false;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: <Widget>[
          ExpansionPanelList(
            //打开和关闭的回调
            expansionCallback: (int index,bool isExpanded){
              print(index);
              if(isExpanded){
                _isExpanded=false;
              }else{
                _isExpanded=true;
              }
              setState(() {
//                _isExpanded=!isExpanded;
              });
            },
            children: [
              ExpansionPanel(
                /*
                true=打开面板
                false=关闭面板
                 */
                isExpanded: _isExpanded,
                //头部
                headerBuilder: (BuildContext context,bool isExopanded){
                  return   Container(
                    padding: EdgeInsets.all(20),
                    child: Text('请选择'),
                  );
                },
                //展开的内容
                body: Container(
                    padding: EdgeInsets.all(20),
                    width: double.infinity,
                    child:  Column(
                      children: <Widget>[
                        RaisedButton(
                          child: Text('选择A'),
                          onPressed: (){
                            _isExpanded=false;
                            setState(() { });
                          },
                        ),
                        RaisedButton(
                          child: Text('选择B'),
                          onPressed: (){
                            _isExpanded=false;
                            setState(() { });
                          },
                        ),
                      ],
                    )
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

}



