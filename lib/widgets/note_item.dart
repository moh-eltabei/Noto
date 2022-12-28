import 'package:flutter/material.dart';
import 'package:noto/pages/edit_note_page.dart';

import '../model/note_model.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.notes});
  final NoteModel notes;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pushNamed(
        EditNotePage.id,
      ),
      child: Container(
        padding: const EdgeInsets.only(
          top: 24,
          bottom: 24,
          left: 16,
        ),
        margin: const EdgeInsets.only(bottom: 8),
        decoration: BoxDecoration(
          color: Color(notes.color),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                notes.title,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 16,
                ),
                child: Text(
                  notes.subTitle,
                  style: TextStyle(
                    color: Colors.black.withOpacity(.5),
                    fontSize: 18,
                  ),
                ),
              ),
              trailing: const Icon(
                Icons.delete,
                color: Colors.black,
                size: 34,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 16,
              ),
              child: Text(
                notes.date,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
