// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../const.dart';
import '../../model/note_model.dart';

part 'add_notes_state.dart';

class AddNotesCubit extends Cubit<AddNotesState> {
  AddNotesCubit() : super(AddNotesInitial());
  Color color = const Color(0xff189AB4);
  addNote(NoteModel note) async {
    note.color = color.value;
    emit(AddNotesLoading());
    try {
      var noteBox = Hive.box<NoteModel>(kOpenNoteBox);
      emit(AddNotesSuccess());
      await noteBox.add(note);
    } catch (e) {
      emit(AddNotesFailuer(e.toString()));
    }
  }
}
