import 'package:device_info/device_info.dart';
/*
获取设备信息
 */
class DeviceInfoUtil{
  AndroidDeviceInfo androidInfo;
  static DeviceInfoUtil _instance;
  DeviceInfoUtil._();
  static DeviceInfoUtil getInstance()   {
    if (_instance == null) {
      _instance=DeviceInfoUtil._();
      _instance._init();
    }
    return _instance;
  }
  //“_”私有
  void _init()async{
    //虽然错误 直接获取
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
     androidInfo = await deviceInfo.androidInfo;
  }
  String model(){
    return androidInfo.model;
  }
  String brand(){
    return androidInfo.brand;
  }
  String id(){
    return androidInfo.id;
  }

  void aa() async{
    try{
      /*
      设备信息=
      model=Redmi Note 3,
      bootloader=unknown,
      brand=Xiaomi，
      type=user,
      device=kenzo,
      display=MMB29M,
      fingerprint=Xiaomi/kenzo/kenzo:6.0.1/MMB29M/V9.6.3.0.MHOCNFD:user/release-keys,,
      hardware=qcom,
      host=c3-miui-ota-bd73.bj,
      id=MMB29M,
      manufacturer=Xiaomi,
      product=kenzo,
      tags=release-keys,
       */
      print('设备信息=model=${androidInfo.model},bootloader=${androidInfo.bootloader}'
          ',brand=${androidInfo.brand}，type=${androidInfo.type}'
          ',device=${androidInfo.device},display=${androidInfo.display},'
          'fingerprint=${androidInfo.fingerprint},hardware=${androidInfo.hardware},'
          'host=${androidInfo.host},id=${androidInfo.id},'
          'manufacturer=${androidInfo.manufacturer},product=${androidInfo.product},tags=${androidInfo.tags},'
          );
      //[arm64-v8a, armeabi-v7a, armeabi]
      print(androidInfo.supportedAbis);
      //[armeabi-v7a, armeabi]
      print(androidInfo.supported32BitAbis);
      //[arm64-v8a]
      print(androidInfo.supported64BitAbis);
    }catch(e){
      print(e);
    }
  }

}



