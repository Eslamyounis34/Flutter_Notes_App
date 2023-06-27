import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:hive_notes_app/models/note_model.dart';
import 'package:hive_notes_app/shared/components/components.dart';
import 'package:hive_notes_app/widgets/custom_app_bar.dart';
import 'package:hive_notes_app/widgets/custom_text_field.dart';

class EditNoteView extends StatefulWidget {
  EditNoteView({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteView> createState() => _EditNoteViewState();
}

class _EditNoteViewState extends State<EditNoteView> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            CustomeAppBar(
              title: 'Edit Note',
              icon: Icons.check,
              onPressed: () {
                widget.note.title = title ?? widget.note.title;
                widget.note.content = content ?? widget.note.content;
                widget.note.save();
                BlocProvider.of<NotesCubit>(context).getNotes();
                Navigator.pop(context);
              },
            ),
            SizedBox(
              height: 50,
            ),
            CustomTextField(
              hint: widget.note.title,
              maxLines: 1,
              onChanged: (value) {
                title = value;
              },
            ),
            SizedBox(height: 16),
            CustomTextField(
              hint: widget.note.content,
              maxLines: 5,
              onChanged: (value) {
                content = value;
              },
            )
          ],
        ),
      ),
    );
  }
}
