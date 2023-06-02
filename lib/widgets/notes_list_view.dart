import 'package:flutter/cupertino.dart';

import '../shared/components/components.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return Padding(
        padding: EdgeInsets.symmetric(vertical: 8),
        child: buildNoteItem(),
      );
    });
  }
}
