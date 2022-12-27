import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';

import '../const.dart';
import '../model/note_model.dart';

part 'add_notes_state.dart';

class AddNotesCubit extends Cubit<AddNotesState> {
  AddNotesCubit() : super(AddNotesInitial());

  addNote(NoteModel note) async{
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
