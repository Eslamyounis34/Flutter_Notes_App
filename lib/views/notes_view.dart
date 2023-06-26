import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hive_notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:hive_notes_app/shared/components/components.dart';
import 'package:hive_notes_app/widgets/add_note_bottom_sheet.dart';
import 'package:hive_notes_app/widgets/notes_view_body.dart';

import '../widgets/custom_app_bar.dart';
import '../widgets/notes_list_view.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return BlocProvider(
      create: (context) => NotesCubit(),
      child: Scaffold(
          floatingActionButton: FloatingActionButton(
              onPressed: () {
                showModalBottomSheet(
                    isScrollControlled: true,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20))),
                    context: context,
                    builder: (context) {
                      return AddNoteBottomSheet();
                    });
              },
              child: Icon(Icons.add),
              backgroundColor: Colors.grey,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16))),
          body: NotesViewBody()),
    );
  }
}
