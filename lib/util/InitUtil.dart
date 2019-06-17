import 'PackageInfoUtil.dart';
import 'DeviceInfoUtil.dart';
/*
初始化工具类
 */
class InitUtil{
  static InitUtil _instance;
  InitUtil._();
  static InitUtil getInstance()   {
    if (_instance == null) {
      _instance=InitUtil._();
      _instance._init();
    }
    return _instance;
  }
  void  _init(){
    PackageInfoUtil.getInstance();
    DeviceInfoUtil.getInstance();
  }
}

