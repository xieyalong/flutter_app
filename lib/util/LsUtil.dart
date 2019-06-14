import 'package:localstorage/localstorage.dart';
/*
 import 'package:flutter_app/util/LsUtil.dart';
   LsUtil.getInstance().setItem("aa", "bbbbAAAAA");
   LsUtil.getInstance().getItem("aa");
 */
class LsUtil{
  LocalStorage storage;
  static LsUtil _instance;
  LsUtil._();
  static LsUtil getInstance()   {
    if (_instance == null) {
      _instance = new LsUtil._();
      _instance.storage=new LocalStorage('some_key');
    }
    return _instance;
  }
  Future<void> setItem(String key,value, [Object toEncodable(Object nonEncodable),]){
    storage.setItem(key, value);
  }
  dynamic getItem(String key) {
    return  storage.getItem(key);
  }
  Future<void> setInt(String key,value, [Object toEncodable(Object nonEncodable),]){
    storage.setItem(key, value);
  }
  int getInt(String key) {
    try{
      return storage.getItem(key);
    }catch(e){
      print(">]error=${e.toString()}");
      return  0;
    }
  }
  Future<void> setString(String key,value, [Object toEncodable(Object nonEncodable),]){
    storage.setItem(key, value);
  }
  String getString(String key) {
    try{
      return storage.getItem(key);
    }catch(e){
      print(">]error=${e.toString()}");
      return  null;
    }
  }
  Future<void> setDouble(String key,value, [Object toEncodable(Object nonEncodable),]){
    storage.setItem(key, value);
  }
  double getDouble(String key) {
    try{
      return storage.getItem(key);
    }catch(e){
      print(">]error=${e.toString()}");
      return  0.0;
    }
  }
  Future<void> setBool(String key,value, [Object toEncodable(Object nonEncodable),]){
    storage.setItem(key, value);
  }
  bool getBool(String key) {
    try{
      return storage.getItem(key);
    }catch(e){
      print(">]error=${e.toString()}");
      return  null;
    }
  }
}
