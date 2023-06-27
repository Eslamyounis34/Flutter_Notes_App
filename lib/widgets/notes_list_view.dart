import 'package:buildcondition/buildcondition.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:hive_notes_app/widgets/note_item.dart';

import '../models/note_model.dart';
import '../shared/components/components.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel>? notes = BlocProvider.of<NotesCubit>(context).notesList;
        print('testScreenList : ' + notes.toString());
        return BuildCondition(
          condition: notes!.isNotEmpty,
          builder: (context) => Padding(
            padding: const EdgeInsets.only(top: 18.0),
            child: ListView.builder(
                itemCount: notes?.length,
                padding: EdgeInsets.zero,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: 4),
                    child: NoteItem(
                      note: notes![index],
                    ),
                  );
                }),
          ),
          fallback: (context) => const Center(
              child: Text(
            'Add Your First Note',
            style: TextStyle(color: Colors.white, fontSize: 22),
          )),
        );
      },
    );
  }
}
