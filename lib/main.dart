import 'package:flutter/material.dart';
import 'package:hive_notes_app/shared/styles.dart';
import 'package:hive_notes_app/views/notes_view.dart';

void main() {
  runApp(NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: darkTheme,
      darkTheme: darkTheme,
      home: const NotesView(),
      debugShowCheckedModeBanner: false,
    );
  }
}
