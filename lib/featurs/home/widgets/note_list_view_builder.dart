import 'package:flutter/material.dart';

import '../../../models/note_model.dart';
import 'note_item.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({super.key, required this.notes});
  final List<NoteModel> notes;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: notes.length,
      itemBuilder: (context, index) {
        return NoteItem(noteModel: notes[index]);
      },
    );
  }
}
