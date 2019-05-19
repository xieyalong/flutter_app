import 'package:flutter/material.dart';

class  PageStatefulWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    //绑定动态页面
    return PageStatefulWidgetState();
  }
}

/*
主页面：
功能介绍：
 页面跳转流程：PageStatefulWidgetState->CountWidgetA-CountWidgetB，
  PageStatefulWidgetState页面的数据，CountWidgetB页面要用，
 但中间有个CountWidgetA页面，一级传递一级会很乱，需要InheritedWidget
 直接从PageStatefulWidgetState把数据传递给CountWidgetB
 */
class  PageStatefulWidgetState extends State<PageStatefulWidget> {
  int _count=0;
  /*
  回调函数，除了自己使用，也给CountWidgetB页面使用
   */
  void _callbackCountWidget(){
    setState(() {
      _count++;
      print('>]s----$_count');
    });
  }
  @override
  Widget build(BuildContext context) {
    /*
    CountProvider作为父级页面，n级的子页面就能用到这样里面的数据
     */
    return   CountProvider(
      count: _count,
      callback:_callbackCountWidget,
      child:  Scaffold(
          floatingActionButton: FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: (){
                _callbackCountWidget();
              }),
          body:CountWidgetA()
      ),
    );
  }
}
/*
静态子页面一级
 */
class CountWidgetA extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
        return CountWidgetB();
  }
}

/*
静态子页面二级
 */
class CountWidgetB extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    //获取provider的数据
    final int _count=CountProvider.of(context).count;
    final VoidCallback callback=CountProvider.of(context).callback;
    return Center(
      child: ActionChip(
        label: Text('$_count'),
        onPressed: callback,
      ),
    );
  }
}
/*
InheritedWidget作用：就是以它做为根目录组件，
把数据放在里面供n级子页面调用，
里面的数据都是静态的
 */
class CountProvider extends InheritedWidget{
  final int count;
  final VoidCallback callback;
  final Widget child;


  CountProvider({
    this.count,
    this.callback,
    this.child
  }):super(child:child);
  /*
  此方法就是从上级页面获取数据，提供子级页面数据，
  也可以这样写
   static CountInheritedWidget of(BuildContext context)=>
      context.inheritFromWidgetOfExactType(CountInheritedWidget);

   */
  static CountProvider of(BuildContext context){
    return context.inheritFromWidgetOfExactType(CountProvider);
  }
  /*
  更新通知方法
  只有父类的数据才会调用此方法,
  oldWidget就是CountProvider
   */
  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {

    print('>]oldWidget=$oldWidget');
    return true;
  }

}

