import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noto/cubit/add_notes_cubit/add_notes_cubit.dart';

import '../const.dart';

class ColorListViewButtonSheet extends StatefulWidget {
  const ColorListViewButtonSheet({super.key});

  @override
  State<ColorListViewButtonSheet> createState() =>
      _ColorListViewButtonSheetState();
}

class _ColorListViewButtonSheetState extends State<ColorListViewButtonSheet> {
  int currentIndex = 0;
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
                BlocProvider.of<AddNotesCubit>(context).color = kColors[index];
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

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isSelect, required this.color});
  final bool isSelect;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isSelect
        ? Container(
            margin: const EdgeInsets.only(right: 8),
            width: 72,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(6),
              border: Border.all(width: 2, color: Colors.white),
            ),
          )
        : Container(
            margin: const EdgeInsets.only(right: 8),
            width: 36,
            decoration: BoxDecoration(
              color: color.withOpacity(.5),
              borderRadius: BorderRadius.circular(6),
            ),
          );
    // isSelect
    //     ? Container(
    //         margin: const EdgeInsets.only(right: 8),
    //         width: 36,
    //         decoration: BoxDecoration(
    //           color: color,
    //           borderRadius: BorderRadius.circular(6),
    //         ),
    //       )
    //     : Container(
    //         margin: const EdgeInsets.only(right: 8),
    //         width: 36,
    //         decoration: BoxDecoration(
    //           color: color.withOpacity(.2),
    //           borderRadius: BorderRadius.circular(6),
    //         ),
    //       );
  }
}
