part of 'add_note_cubit.dart';

abstract class AddNoteCubitState {}

class AddNoteCubitInitial extends AddNoteCubitState {}

class AddNoteLoading extends AddNoteCubitState {}

class AddNoteSuccess extends AddNoteCubitState {}

class AddNoteFailure extends AddNoteCubitState {
  final String errorMsg;

  AddNoteFailure(this.errorMsg);
}
