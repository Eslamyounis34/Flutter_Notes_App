import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:hive_notes_app/shared/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
          hintText: 'Title',
          hintStyle: TextStyle(color: kPrimaryColor),
          border: buildBoarder(),
          enabledBorder: buildBoarder(),
          focusedBorder: buildBoarder(kPrimaryColor)),
    );
  }

  OutlineInputBorder buildBoarder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: color ?? Colors.white));
  }
}
