import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive_notes_app/models/note_model.dart';
import 'package:hive_notes_app/shared/constants.dart';
import 'package:meta/meta.dart';

part 'add_note_cubit_state.dart';

class AddNoteCubit extends Cubit<AddNoteCubitState> {
  AddNoteCubit() : super(AddNoteCubitInitial());

  Color selectedColor = Color(0xffF0B67F);

  addNote(NoteModel note) async {
    emit(AddNoteLoading());
    try {
      note.color = selectedColor.value.toInt();
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      await notesBox.add(note);
      print('testState : ' + note.title);
      emit(AddNoteSuccess());
      print('testStateAfterEmit');
    } catch (e) {
      emit(AddNoteFailure(e.toString()));
    }
  }
}
