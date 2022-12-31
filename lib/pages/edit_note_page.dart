import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noto/cubit/notes_list_cubit/notes_list_cubit.dart';
import 'package:noto/model/note_model.dart';

import '../widgets/app_bar.dart';
import '../widgets/custom_app_body.dart';
import '../widgets/custom_text_field.dart';

class EditNotePage extends StatefulWidget {
  const EditNotePage({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNotePage> createState() => _EditNotePageState();
}

class _EditNotePageState extends State<EditNotePage> {
  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return CustomAppBody(
      widget: Column(
        children: [
          CustomAppBar(
            title: 'Edit Note',
            icon: Icons.check,
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subTitle = subTitle ?? widget.note.subTitle;
              widget.note.save();
              BlocProvider.of<NotesListCubit>(context).fitchAllNotes();
              Navigator.pop(context);
            },
          ),
          CustomTextFormFiled(
            onChanged: (value) {
              title = value;
            },
            initialValue: widget.note.title,
            hintText: 'Title',
          ),
          const SizedBox(
            height: 16,
          ),
          Expanded(
            child: CustomTextFormFiled(
              hintText: 'Content',
              initialValue: widget.note.subTitle,
              maxLines: 20,
              onChanged: (value) {
                subTitle = value;
              },
            ),
          ),
        ],
      ),
    );
  }
}
