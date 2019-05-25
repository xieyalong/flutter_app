import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'UserModel.dart';
class PageTest extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {

    return new PageTestState();
  }
}
class PageTestState extends State<PageTest>{
int _currentStep=2;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              /*
             */
              Stepper(
                /*
                选中索引打开
                等价于item的isActive: true,
                 */
                currentStep: _currentStep,
                //index=当前按的索引值，打开当前按下的步骤
                onStepTapped: (int index){
                  _currentStep=index;
                  setState(() {});
                },
                //继续按钮
                onStepContinue: (){
                  _currentStep++;
                  if(_currentStep==3){
                    _currentStep=0;
                  }
                  setState(() {});
                },
                //取消按钮
                onStepCancel: (){
                  _currentStep--;
                  if(_currentStep==-1){
                    _currentStep=0;
                  }
                  setState(() {});
                },
                steps: [
                  Step(
                      title:Text('第1天'), 
                      subtitle: Text('副标题'),
                      content: Text('采集需求'),
                    //选中状态
                    isActive: _currentStep==0,
                  ),
                  Step(
                      title:Text('第2天'),
                      content:Text('需求确认',),
                    isActive:  _currentStep==1,

                  ),
                  Step(
                      title:Text('第3天'),
                      content: Text('开发'),
                    isActive:  _currentStep==2,
                  ),
                ],
                
              )

          ]
      ),
    );
  }

}


