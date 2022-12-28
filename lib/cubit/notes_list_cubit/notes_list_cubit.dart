import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:noto/model/note_model.dart';

import '../../const.dart';

part 'notes_list_state.dart';

class NotesListCubit extends Cubit<NotesListState> {
  NotesListCubit() : super(NotesListInitial());

  fitchAllNotes() {
    try {
      var noteBox = Hive.box<NoteModel>(kOpenNoteBox);
      List<NoteModel> notes = noteBox.values.toList();
      emit(NotesListSuccess(notes));
    } catch (e) {
      emit(NotesListFailuer(e.toString()));
    }
  }
}
