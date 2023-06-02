import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hive_notes_app/shared/components/components.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            //  CustomeAppBar()
            SizedBox(
              height: 50,
            ),
            CustomeAppBar(),
            SizedBox(
              height: 16,
            ),
            buildNoteItem()
            //   buildNoteItem(),
          ],
        ),
      ),
    );
  }
}

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
