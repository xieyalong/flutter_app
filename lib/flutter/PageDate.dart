import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
class PageDate extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new PageDateState();
  }
}
class PageDateState extends State<PageDate>{
  DateTime dateTime=DateTime.now();//现在时间
  @override
  Widget build(BuildContext context) {

    return Column(
      children: <Widget>[
        InkWell(
          //单机事件
            onTap: selectDate,
            child:Row(
              children: <Widget>[
                //日期格式化，显示当前时间
                Text(DateFormat.yMd().format(dateTime)),
                Icon(Icons.arrow_drop_down)
              ],
            )
        )
      ],
    );
  }
  void selectDate() async{
    /*
    返回选择的时间
     */
    DateTime  date=await showDatePicker(
      context: context,
      //默认的日期
      initialDate: dateTime,
      //开始日期
      firstDate: DateTime(1900),
      //结束时间
      lastDate: DateTime(3000),
    );
    if(date!=null){
      setState(() {
        dateTime=date;
      });
    }

  }
}

