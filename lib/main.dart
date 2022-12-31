import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:noto/const.dart';
import 'package:noto/cubit/notes_list_cubit/notes_list_cubit.dart';
import 'package:noto/model/note_model.dart';
import 'package:noto/pages/notes_page.dart';
import 'package:noto/simple_bloc_observer.dart';

void main() async {
  await Hive.initFlutter();
  Bloc.observer = SimpleBlocObserver();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kOpenNoteBox);
  runApp(const NotoApp());
}

class NotoApp extends StatelessWidget {
  const NotoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesListCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.dark,
          fontFamily: 'Poppins',
        ),
        home: const NotesPage(),
      ),
    );
  }
}
