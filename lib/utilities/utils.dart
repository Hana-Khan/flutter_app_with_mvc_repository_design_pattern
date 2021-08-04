import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';


Future showErrorToastMessage({String? message}){
  return Fluttertoast.showToast(
      backgroundColor: Colors.red,
      textColor: Colors.black,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      fontSize: 16.0,
      msg: message!
      );
}
Future showSuccessToastMessage({String? message}){
  return Fluttertoast.showToast(
    backgroundColor: Colors.green,
    textColor: Colors.black,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.CENTER,
    timeInSecForIosWeb: 1,
    fontSize: 16.0,
    msg: message!
  );
}


