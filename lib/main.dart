import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive_notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:hive_notes_app/models/note_model.dart';
import 'package:hive_notes_app/shared/constants.dart';
import 'package:hive_notes_app/shared/styles.dart';
import 'package:hive_notes_app/simple_bloc_observer.dart';
import 'package:hive_notes_app/views/notes_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  await Hive.initFlutter();
  Bloc.observer = SimpleBlocObserver();
  await Hive.openBox<NoteModel>(kNotesBox);
  Hive.registerAdapter(NoteModelAdapter());
  runApp(NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AddNoteCubit(),
        ),
      ],
      child: MaterialApp(
        theme: darkTheme,
        darkTheme: darkTheme,
        home: const NotesView(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
