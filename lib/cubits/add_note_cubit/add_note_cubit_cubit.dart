import 'package:bloc/bloc.dart';
import 'package:hive_notes_app/models/note_model.dart';
import 'package:meta/meta.dart';

part 'add_note_cubit_state.dart';

class AddNoteCubitCubit extends Cubit<AddNoteCubitState> {
  AddNoteCubitCubit() : super(AddNoteCubitInitial());

  addNote(NoteModel note) {}
}
