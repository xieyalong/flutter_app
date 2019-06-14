import 'dart:convert';
class JsonUtil{
  static JsonUtil _instance;
  JsonUtil._();
  static JsonUtil getInstance()   {
    if (_instance == null) {
      _instance = new JsonUtil._();
    }
    return _instance;
  }
  /*
  map，list 转 json字符串
  StrUtil.getInstance().toJsonString(list)
   */
  String toDataString(dynamic v){
    return jsonEncode(v);
  }
  /*
  字符串转json
  String strData='{"a":"AA","b":"BAAAA","c":45,"g":"L"}';
 dynamic json=JsonUtil.getInstance().toStringJson(strData);
 print(json['g']);
   */
  dynamic toStringJson(String v){
    return jsonDecode(v);
  }
  /*
        String str='{"a":"AA","b":"BAAAA","c":45}';
        Map<String,dynamic> map=StrUtil.getInstance().toJsonMap(str);
   */
  Map<String,dynamic> toJsonMap(String  jsonString){
    var json=jsonDecode(jsonString);
    Map<String,dynamic> map=json as Map<String,dynamic>;
    return map;
  }
  /*
    String str='["a","AA","b","BAAAA","c",45]';
     print(StrUtil.getInstance().toJsonList(str));
   */
  List<dynamic> toJsonList(String  jsonString){
    var json=jsonDecode(jsonString);
    List<dynamic> list=json as List<dynamic>;
    return list;
  }
}
