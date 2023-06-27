import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:hexcolor/hexcolor.dart';

class CustomAlert extends StatefulWidget {
  const CustomAlert(
      {super.key, required this.title, required this.content, this.onPressed});

  final String title, content;
  final void Function()? onPressed;

  @override
  State<CustomAlert> createState() => _CustomAlertState();
}

class _CustomAlertState extends State<CustomAlert> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: HexColor('333739'),
      title: Text(
        widget.title,
        style: TextStyle(color: Colors.white),
      ),
      content: Text(widget.content,
          style: TextStyle(color: Color.fromARGB(255, 212, 211, 211))),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text(
              'No',
              style: TextStyle(color: Color(0xffFFCC80)),
            )),
        TextButton(
            onPressed: widget.onPressed,
            child: const Text(
              'Yes',
              style: TextStyle(color: Color(0xffFFCC80)),
            ))
      ],
    );
  }
}
