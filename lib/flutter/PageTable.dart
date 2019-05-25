import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'UserModel.dart';
class PageTable extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {

    return new PageTableState();
  }
}
class PageTableState extends State<PageTable>{
  List<UserModel> _list=new List();
  //是否是升序
  bool _sortAscending=false;
  //默认在第一列排序
  int _sortColumnIndex=0;
  void  initData(){
    String imgstr="http://img2.imgtn.bdimg.com/it/u=690332301,1613995637&fm=26&gp=0.jpg";
    for(int i=0;i<100;i++){
      _list.add(new UserModel(i+1, 'name${i}','images/a.jpeg',false));
    }
  }
  @override
  void initState() {
    super.initState();
    initData();
  }
  /*
  行
   */
  DataRow getRow(UserModel u){
    return DataRow(
      //是否选中
        selected: u.boo,
        //点击行单机事件 被选了=true
        onSelectChanged:  (bool b){
          print('---${b}');
          if(u.boo!=b){
            u.boo=b;
          }
          setState(() {});
        },
        cells: [
          DataCell(Text('${u.id}')),
          DataCell(Text(u.name)),
          DataCell(Image.asset(u.img)),
        ]
    );
  }
  /*
  列头
   */
  List<DataColumn>  getDataColumn(){
    List<String> list=["ID","name","图片"];
    List<DataColumn> coumns=new List();
    for(int i=0;i<list.length;i++){
      DataColumn dc= new DataColumn(
          label:Text(list[i]),
          onSort:_onSort
      );
      coumns.add(dc);
    }
    return coumns;
  }



  /*
  排序
  index=第几列的索引号
  sortAscending：是否是升序排列
   */
  bool _onSort(int index,bool sortAscending){
    print(index);
    //点击了第几列，设置新的排序列
    _sortColumnIndex=index;
    _sortAscending=sortAscending;
    _list.sort((u1,u2){
      //取反向
      if(!_sortAscending){
        final u3=u1;
        u1=u2;
        u2=u3;
      }
      int i=0;
      if(1==index){
        i=u1.name.length.compareTo(u2.name.length);
      }else {
        i=u1.id.compareTo(u2.id);
      }
      return i;
    });
    //更新
    setState(() { });
  }
  /*
  全选
   */
  void _onSelectAll(bool b){
    print('_onSelectAll${b}');
    for(int i=0;i<_list.length;i++){
      _list[i].boo=b;
    }
    setState(() {  });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Container(
          width: double.infinity,
          color: Colors.green,
          padding: EdgeInsets.all(0),
          child: ListView(
            children: <Widget>[
              DataTable(
                //全选
                onSelectAll:_onSelectAll,
                //给第几列设置排序，默认谁出现一个箭头
                sortColumnIndex: _sortColumnIndex,
                /*
              true=升序排列 显示向下箭头
              false=降序，显示向上箭头
               */
                sortAscending: _sortAscending,
                //最上面的列，2列
                columns: getDataColumn(),
                //下面的行，1行有2列
                rows:_list.map((u){
                  return getRow(u);
                }).toList(),
              )
            ],
          ),
        )
    );
  }

}
