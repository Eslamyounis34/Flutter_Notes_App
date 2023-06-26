import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';

import '../../models/note_model.dart';
import '../../shared/constants.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  getNotes() async {
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      var notesList = notesBox.values.toList();
      emit(NotesSucess(notesList));
    } catch (e) {
      emit(NotesFailure(e.toString()));
      print(e.toString());
    }
  }
}
