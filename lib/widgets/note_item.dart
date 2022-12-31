import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noto/const.dart';
import 'package:noto/cubit/notes_list_cubit/notes_list_cubit.dart';
import 'package:noto/pages/edit_note_page.dart';
import '../model/note_model.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});
  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: ((context) {
            return EditNotePage(
              note: note,
            );
          }),
        ),
      ),
      child: Container(
        padding: const EdgeInsets.only(
          top: 24,
          bottom: 24,
          left: 16,
        ),
        margin: const EdgeInsets.only(bottom: 8),
        decoration: BoxDecoration(
          color: Color(note.color),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                note.title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: kBlackColor,
                  fontSize: 28,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 16,
                ),
                child: Text(
                  note.subTitle,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: kBlackColor.withOpacity(.5),
                    fontSize: 18,
                  ),
                ),
              ),
              trailing: IconButton(
                onPressed: () {
                  note.delete();
                  BlocProvider.of<NotesListCubit>(context).fitchAllNotes();
                },
                icon: const Icon(
                  Icons.delete,
                  color: kBlackColor,
                  size: 34,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 16,
              ),
              child: Text(
                note.date,
                style: const TextStyle(
                  color: kBlackColor,
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
