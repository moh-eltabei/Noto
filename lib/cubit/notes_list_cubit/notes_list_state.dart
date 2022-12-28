part of 'notes_list_cubit.dart';

@immutable
abstract class NotesListState {}

class NotesListInitial extends NotesListState {}

class NotesListLoading extends NotesListState {}

class NotesListSuccess extends NotesListState {
  final List<NoteModel> notes;

  NotesListSuccess(this.notes);
}

class NotesListFailuer extends NotesListState {
  final String errMessage;
  NotesListFailuer(this.errMessage);
}
