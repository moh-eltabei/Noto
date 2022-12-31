import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noto/cubit/notes_list_cubit/notes_list_cubit.dart';
import 'package:noto/model/note_model.dart';
import 'package:noto/widgets/note_item.dart';

class NotesListView extends StatefulWidget {
  const NotesListView({super.key});

  @override
  State<NotesListView> createState() => _NotesListViewState();
}

class _NotesListViewState extends State<NotesListView> {
  @override
  void initState() {
    BlocProvider.of<NotesListCubit>(context).fitchAllNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesListCubit, NotesListState>(
      builder: (context, state) {
        List<NoteModel> notes =
            BlocProvider.of<NotesListCubit>(context).notes ?? [];
        return ListView.builder(
          padding: EdgeInsets.zero,
          itemBuilder: ((context, index) {
            return NoteItem(
              note: notes[index],
            );
          }),
          itemCount: notes.length,
        );
      },
    );
  }
}
