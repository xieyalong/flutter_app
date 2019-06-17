import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';
class ToastUtil{
  static ToastUtil _instance;
  ToastUtil._();
  static ToastUtil getInstance()   {
    if (_instance == null) {
      _instance=ToastUtil._();
    }
    return _instance;
  }
  void error(String content){
    Fluttertoast.showToast(
        msg: content,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIos: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }
  void succeed(String content){
    Fluttertoast.showToast(
        msg: content,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIos: 1,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0,
    );
  }
}
