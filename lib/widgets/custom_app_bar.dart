import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomeAppBar extends StatelessWidget {
  CustomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Notes',
          style: TextStyle(fontSize: 28, color: Colors.white),
        ),
        Spacer(),
        Container(
          height: 45,
          width: 45,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.09),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Center(
              child: Icon(
            Icons.search,
            color: Colors.white,
          )),
        )
      ],
    );
  }
}
