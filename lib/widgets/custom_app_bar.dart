import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive_notes_app/widgets/custom_icon.dart';

class CustomeAppBar extends StatelessWidget {
  const CustomeAppBar(
      {super.key, required this.title, required this.icon, this.onPressed});

  final String title;
  final IconData icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 28, color: Colors.white),
        ),
        Spacer(),
        CustomIcon(
          icon: icon,
          onPressed: onPressed,
        )
      ],
    );
  }
}
