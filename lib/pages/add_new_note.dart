import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubit/add_notes_cubit/add_notes_cubit.dart';
import '../widgets/add_notes_form.dart';

class AddNewNote extends StatelessWidget {
  const AddNewNote({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNotesCubit(),
      child: BlocConsumer<AddNotesCubit, AddNotesState>(
        listener: (context, state) {
          if (state is AddNotesFailuer) {
            print('err ${state.errMessage}');
          }
          if (state is AddNotesSuccess) {
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddNotesLoading ? true : false,
            child: const Padding(
              padding: EdgeInsets.all(16),
              child: SingleChildScrollView(
                child: NoteForm(),
              ),
            ),
          );
        },
      ),
    );
  }
}
