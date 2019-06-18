//import 'package:flutter_picker/flutter_picker.dart';
//import 'package:flutter/material.dart';
//import 'dart:convert';
//class  PickerUtil{
//  var _scaffoldKey=GlobalKey<ScaffoldState>();
//  static PickerUtil _instance;
//  PickerUtil._();
//  static PickerUtil getInstance()   {
//    if (_instance == null) {
//      _instance=PickerUtil._();
//    }
//    return _instance;
//  }
//  void aa(BuildContext context){
//    showPicker(BuildContext context) {
//      Picker picker = new Picker(
//          adapter: PickerDataAdapter<String>(pickerdata: new JsonDecoder().convert(PickerData)),
//          changeToFirst: true,
//          textAlign: TextAlign.left,
//          columnPadding: const EdgeInsets.all(8.0),
//          onConfirm: (Picker picker, List value) {
//            print(value.toString());
//            print(picker.getSelectedValues());
//          }
//      );
//      picker.show(_scaffoldKey.currentState);
//
//    }
//
//  }
//}
