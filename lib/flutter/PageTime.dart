import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
class PageTime extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new PageTimeState();
  }
}
class PageTimeState extends State<PageTime>{
  //默认选择时间
  TimeOfDay _selectTime=TimeOfDay(hour: 18,minute: 48);
  void selectTime() async{
    /*
    返回选择的时间
     */
    TimeOfDay  timep=await showTimePicker(
      context: context,
      //默认的时间
      initialTime: _selectTime,
    );
    if(null!=timep){
      _selectTime=timep;
    }
    //刷新页面
    setState(() {

    });

  }
  @override
  Widget build(BuildContext context) {

    return Column(
      children: <Widget>[
        InkWell(
          //单机事件
            onTap: selectTime,
            child:Row(
              children: <Widget>[
                //日期格式化，显示当前时间
                Text('时间=${_selectTime}'),
                Icon(Icons.arrow_drop_down)
              ],
            )
        )
      ],
    );
  }

}

