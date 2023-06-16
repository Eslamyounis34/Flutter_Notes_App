import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:hive_notes_app/widgets/custom_app_bar.dart';

class EditNoteView extends StatelessWidget {
  EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            CustomeAppBar(
              title: 'Edit Note',
              icon: Icons.check,
            )
          ],
        ),
      ),
    );
  }
}
