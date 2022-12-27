part of 'add_notes_cubit.dart';

@immutable
abstract class AddNotesState {}

class AddNotesInitial extends AddNotesState {}

class AddNotesLoading extends AddNotesState {}

class AddNotesSuccess extends AddNotesState {}

class AddNotesFailuer extends AddNotesState {
  final String errMessage;
  AddNotesFailuer(this.errMessage);
}
