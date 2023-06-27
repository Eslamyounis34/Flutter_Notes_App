import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hexcolor/hexcolor.dart';

void showToast({required String msg}) => Fluttertoast.showToast(
    msg: msg,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.SNACKBAR,
    timeInSecForIosWeb: 1,
    backgroundColor: Colors.grey,
    textColor: Colors.black,
    fontSize: 16.0);
