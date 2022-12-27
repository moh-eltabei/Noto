import 'package:flutter/material.dart';

import '../widgets/app_bar.dart';
import '../widgets/custom_app_body.dart';
import '../widgets/custom_text_field.dart';

class EditNotePage extends StatelessWidget {
  const EditNotePage({super.key});
  static String id = 'EditNotePage';

  @override
  Widget build(BuildContext context) {
    return CustomAppBody(
      widget: Column(
        children: const [
          CustomAppBar(
            title: 'Edit Note',
            icon: Icons.check,
          ),
          CustomTextFormFiled(
            hintText: 'Title',
          ),
          SizedBox(
            height: 16,
          ),
          Expanded(
            child: CustomTextFormFiled(
              hintText: 'Content',
              maxLines: 20,
            ),
          ),
        ],
      ),
    );
  }
}
