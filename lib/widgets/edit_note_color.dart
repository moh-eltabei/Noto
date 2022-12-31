
import 'package:flutter/material.dart';

import '../const.dart';
import '../model/note_model.dart';
import 'color_list_view_button_sheet.dart';

class EditNoteColor extends StatefulWidget {
  const EditNoteColor({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteColor> createState() => _EditNoteColorState();
}

class _EditNoteColorState extends State<EditNoteColor> {
  late int currentIndex;
  @override
  void initState() {
    currentIndex = kColors.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: SizedBox(
        height: 24,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: kColors.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                currentIndex = index;
                widget.note.color = kColors[index].value;
                setState(() {});
              },
              child: ColorItem(
                color: kColors[index],
                isSelect: currentIndex == index,
              ),
            );
          },
        ),
      ),
    );
  }
}
