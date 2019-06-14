import 'package:localstorage/localstorage.dart';
/*
 import 'package:flutter_app/util/LsUtil.dart';
   LsUtil.getInstance().setItem("aa", "bbbbAAAAA");
   LsUtil.getInstance().getItem("aa");
 */
class LsUtil{
  String  lsKey;
  LocalStorage storage;
  static LsUtil _instance;
  LsUtil._();
  LsUtil._1(this.lsKey);
  static LsUtil getInstance()   {
    if (_instance == null) {
      _instance = new LsUtil._();
    }
    //相同key不会重复创建
    _instance.storage=new LocalStorage('some_key');
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
  Future<void> clear() {
    storage.clear();
  }
  /*
  创建新储存库
   */
  LocalStorage newLs(String lsKey){
    return new LocalStorage(lsKey);
  }
  /*
  清除新储存库
   */
  Future<void> clearLs(String lsKey) {
    new LocalStorage(lsKey).clear();
  }
}
