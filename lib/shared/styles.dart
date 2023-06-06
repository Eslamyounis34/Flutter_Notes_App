import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';

ThemeData darkTheme = ThemeData(
    fontFamily: 'Poppins',
    scaffoldBackgroundColor: HexColor('333739'),
    appBarTheme: AppBarTheme(
        backgroundColor: Colors.blueGrey,
        elevation: 15,
        centerTitle: true,
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.green,
            statusBarBrightness: Brightness.light),
        titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontFamily: 'Poppins')),
    textTheme: const TextTheme(
        bodyLarge: TextStyle(
            color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600)));
