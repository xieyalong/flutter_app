import 'package:shared_preferences/shared_preferences.dart';
class UtilSP{
  static UtilSP _instance;
  SharedPreferences sp;
  static UtilSP getInstance()  {
    if (_instance == null) {
      _instance =new UtilSP();
      _instance.init();
    }
    return _instance;
  }
  void init()async{
    sp= await SharedPreferences.getInstance();
  }
  void setInt(String key,int v)async{
    await sp.setInt(key, v);
  }
   getInt(String key)async{
    return await sp.getInt(key);
  }
  void setString(String key,String v)async{
    await sp.setString(key, v);
  }
  void setBool(String key,bool v)async{
    await sp.setBool(key, v);
  }
  void setStringList(String key, List<String> v)async{
    await sp.setStringList(key, v);
  }
  List<String> getStringList(String key, List<String> v){
    return  sp.getStringList(key);
  }
}
