import 'package:flutter/material.dart';
import 'package:noto/widgets/note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemBuilder: ((context, index) {
        return const NoteItem();
      }),
      itemCount: 10,
    );
  }
}
