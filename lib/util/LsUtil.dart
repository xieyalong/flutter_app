import 'package:localstorage/localstorage.dart';
/*
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
}
