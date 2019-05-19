import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class CountModel extends Model{
  int _count=0;
//_count属性的get，返回_count
  int get count=>_count;
  void callbackCountWidget(){
    _count++;
    print('>]CountModel.count=$_count');
    /*
   监听model的变化，数据有变化页面（组件）就会更新
    */
    notifyListeners();
  }
}
/*
使用静态页面，组件的更新有Model操作
 */
class  PageStatefulWidgetBindingData extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    /*
    ScopedModel作为父级页面，里面的组件就会调到这里面的属性和方法等
     */
    return   ScopedModel(
      //绑定数据
        model: CountModel(),
        child:  Scaffold(
          /*
          floatingActionButton:组件等于model.builder，使里面的组件能使用model的数据，
          然后model.builder把组件return给floatingActionButton:
           */
            floatingActionButton:ScopedModelDescendant<CountModel>(
              /*
              FloatingActionButton不需要重新刷新数据
               */
              rebuildOnChange: false,
              /*
              有3个可选参数,最后一个为model的数据
              builder:把组件return给“floatingActionButton:”
               */
              builder: (context,x,model)=>   FloatingActionButton(
                child: Icon(Icons.add),
                //调用CountModel里面的方法
                onPressed:model.callbackCountWidget,
              ),
            ),
            body:CountWidgetA()
        )
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
    /*
    return个Center，此时的Center只是被model绑定数据了
     builder: 就是ActionChip获取数据后return的widget
     */
    return ScopedModelDescendant<CountModel>(
      builder: (context,x,model)=> Center(
        child: ActionChip(
          // //调用CountModel里面的属性
          label: Text('${model._count}'),
          // //调用CountModel里面的方法
          onPressed: model.callbackCountWidget,
        ),
      ),
    );

  }
}



