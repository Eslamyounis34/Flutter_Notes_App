import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:hive_notes_app/shared/constants.dart';
import 'package:hive_notes_app/widgets/custom_text_field.dart';

import 'custom_button.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: HexColor('333739'),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: SingleChildScrollView(
          child: Column(children: [
            SizedBox(
              height: 25,
            ),
            CustomTextField(
              hint: 'Title',
              maxLines: 1,
            ),
            SizedBox(
              height: 16,
            ),
            CustomTextField(hint: 'Content', maxLines: 5),
            SizedBox(
              height: 32,
            ),
            CustomButton(),
            SizedBox(
              height: 22,
            )
          ]),
        ),
      ),
    );
  }
}