import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hive_notes_app/shared/components/components.dart';
import 'package:hive_notes_app/widgets/add_note_bottom_sheet.dart';

import '../widgets/custom_app_bar.dart';
import '../widgets/notes_list_view.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16))),
                context: context,
                builder: (context) {
                  return AddNoteBottomSheet();
                });
          },
          child: Icon(Icons.add),
          backgroundColor: Colors.grey,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            CustomeAppBar(
              title: 'Notes',
              icon: Icons.search,
            ),
            Expanded(child: const NotesListView())
          ],
        ),
      ),
    );
  }
}
