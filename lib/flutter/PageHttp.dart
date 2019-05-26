import 'package:flutter/material.dart';
import 'dart:async';
class PageHttp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new PageHttpState();
  }
}
class PageHttpState extends State<PageHttp>{
  @override
  Widget build(BuildContext context) {
    //实例化Provider
    return  CountProvider(
      //实例化bloc
      bloc: CountBloc(),
      child:Scaffold(
          body:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                CountButton(),
              ]
          )
      ) ,
    );
  }

}




class CountButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    CountBloc _bloc=CountProvider.of(context).bloc;
    return  StreamBuilder(
      //舒适化数据为0
        initialData:0 ,
        //拿到stream
        stream: _bloc._stream,
        //获取stream里面的数据
        builder:(context,snapshot){
          return Column(children: <Widget>[
            Text('${snapshot.data}'),
            RaisedButton(
                child: Text('add'),
                onPressed: (){
                  //把数据存到蓄水池
                  _bloc._sink.add(1);
                  _bloc.log('add');
                }
            ),
          ],);

        }
    ) ;
  }
}
/*
创建一个数据供应者，供子组件调用Bloc
 */
class CountProvider extends InheritedWidget{
  CountBloc bloc;
  Widget child;

  CountProvider({this.bloc, this.child}):super(child:child);
  static CountProvider of(BuildContext context)=>
      context.inheritFromWidgetOfExactType(CountProvider);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return true;
  }

}
/*
创建数据集
 */
class CountBloc{
  int _count=0;
  //获取Sink 把数据存到里面
  StreamController _countContrller=new StreamController<int>();
  //获取Sink的数据，把数据保存到自己里面，供页面的Stream调用
  StreamController _countContrller2=new StreamController<int>();
  /*
  存储数据
  StreamSink<int> sink(){
    return _countContrller.sink;
  }
   */
  StreamSink<int> get _sink=>_countContrller.sink;


  Stream<int> get _stream=>_countContrller2.stream;
  CountBloc(){
    _countContrller.stream.listen(onData);
  }
  void onData(var data1){
    _count+=data1;
    _countContrller2.add(_count);
    print('>]_count=${_count}');
  }
  void disponse(){
    _countContrller.close();
    _countContrller2.close();
  }

  void log(var log){
    print('>]Bloc=${log}');
  }
}
