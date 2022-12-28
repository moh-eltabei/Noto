import 'package:flutter/material.dart';
import 'package:noto/widgets/custom_app_body.dart';

import '../widgets/app_bar.dart';
import 'add_new_note.dart';
import '../widgets/notes_list_view.dart';

class NotesPage extends StatelessWidget {
  const NotesPage({super.key});
  static String id = 'NotesPage';

  @override
  Widget build(BuildContext context) {
    return CustomAppBody(
      floatingActionButton: FloatingActionButton(
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
        children: const [
          CustomAppBar(
            title: 'Notes',
            icon: Icons.search,
          ),
          Expanded(
            child: NotesListView(),
          ),
        ],
      ),
    );
  }
}
