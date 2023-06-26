import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:hive_notes_app/shared/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, required this.hint, required this.maxLines, this.onSaved});

  final String hint;
  final int maxLines;
  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(color: Colors.white),
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field is required';
        }
      },
      cursorColor: kPrimaryColor,
      maxLines: maxLines,
      decoration: InputDecoration(
          hintText: hint,
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
