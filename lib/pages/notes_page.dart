import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noto/cubit/notes_list_cubit/notes_list_cubit.dart';
import 'package:noto/widgets/custom_app_body.dart';

import '../const.dart';
import '../widgets/app_bar.dart';
import 'add_new_note.dart';
import '../widgets/notes_list_view.dart';

class NotesPage extends StatelessWidget {
  const NotesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomAppBody(
      floatingActionButton: FloatingActionButton(
        backgroundColor: kPrimaryColor,
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                    16,
                  ),
                  topRight: Radius.circular(
                    16,
                  ),
                ),
              ),
              context: context,
              builder: ((context) {
                return const AddNewNote();
              }));
        },
        child: const Icon(
          Icons.add,
        ),
      ),
      widget: Column(
        children: [
          CustomAppBar(
            title: 'Notes',
            icon: Icons.search,
            onPressed: () {},
          ),
          const Expanded(
            child: NotesListView(),
          ),
        ],
      ),
    );
  }
}
