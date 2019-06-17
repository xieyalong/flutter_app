// ignore: uri_does_not_exist
import 'package:package_info/package_info.dart';
import 'JsonUtil.dart';
class PackageInfoUtil{
  PackageInfo packageInfo;
  static PackageInfoUtil _instance;
  PackageInfoUtil._();
  static PackageInfoUtil getInstance()   {
    if (_instance == null) {
      _instance = new PackageInfoUtil._();
      _instance.init();
    }
    return _instance;
  }
  void init()async{
    packageInfo=await PackageInfo.fromPlatform();
  }
  String getAppName(){
    String appName = packageInfo.appName;
    return appName;
  }
  String getPackageName(){
    String packageName = packageInfo.packageName;
    return packageName;
  }
  String getVersion(){
    String version = packageInfo.version;
    return version;
  }

  String getBuildNumber(){
    String buildNumber = packageInfo.buildNumber;
    return buildNumber;
  }
  void a(){
    PackageInfo.fromPlatform().then((PackageInfo packageInfo) {
      print('>]-----');
      String appName = packageInfo.appName;
      String packageName = packageInfo.packageName;
      String version = packageInfo.version;
      String buildNumber = packageInfo.buildNumber;
      print('${appName}--${packageName}--${version}--${buildNumber}');
    });
  }

}


