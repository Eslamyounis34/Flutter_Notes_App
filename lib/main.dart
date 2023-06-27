import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive_notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:hive_notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:hive_notes_app/models/note_model.dart';
import 'package:hive_notes_app/shared/constants.dart';
import 'package:hive_notes_app/shared/styles.dart';
import 'package:hive_notes_app/simple_bloc_observer.dart';
import 'package:hive_notes_app/views/notes_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  await Hive.initFlutter();
  Bloc.observer = SimpleBlocObserver();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNotesBox);
  runApp(NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: MaterialApp(
        theme: darkTheme,
        darkTheme: darkTheme,
        home: const NotesView(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
