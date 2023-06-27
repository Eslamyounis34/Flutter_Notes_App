import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hive_notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:hive_notes_app/models/note_model.dart';
import 'package:hive_notes_app/shared/components/components.dart';
import 'package:hive_notes_app/views/edit_note_view.dart';
import 'package:hive_notes_app/widgets/custome_alert_dialog.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});

  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => EditNoteView(note: note),
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.only(top: 24, bottom: 25, left: 16),
        decoration: BoxDecoration(
            color: Color(note.color), borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                note.title,
                style: TextStyle(color: Colors.black, fontSize: 28),
              ),
              subtitle: Padding(
                padding: EdgeInsets.only(top: 12.0),
                child: Text(note.content,
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.5), fontSize: 18)),
              ),
              trailing: IconButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) => CustomAlert(
                            title: 'Delete Note ?',
                            content:
                                'If you delete Note , You will not be able to retore it ',
                            onPressed: () {
                              deleteNote(context);
                            },
                          ));
                },
                icon: Icon(
                  FontAwesomeIcons.trash,
                  color: Colors.black,
                  size: 24,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 25, top: 16),
              child: Text(
                note.date,
                style: TextStyle(color: Colors.black.withOpacity(0.5)),
              ),
            )
          ],
        ),
      ),
    );
  }

  void deleteNote(BuildContext context) {
    note.delete();
    showToast(msg: 'Note Deleted Successfully');
    Navigator.pop(context);
    BlocProvider.of<NotesCubit>(context).getNotes();
  }
}
