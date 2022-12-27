import 'package:flutter/material.dart';

import '../const.dart';

class CustomTextFormFiled extends StatelessWidget {
  const CustomTextFormFiled(
      {super.key, required this.hintText, this.maxLines = 1, this.onSaved});

  final String hintText;
  final int maxLines;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      maxLines: maxLines,
      cursorColor: kPrimaryColor,
      validator: ((value) {
        if (value?.isEmpty ?? true) {
          return 'Field Is rquired';
        } else {
          return null;
        }
      }),
      decoration: InputDecoration(
        alignLabelWithHint: true,
        hintText: hintText,
        labelText: hintText,
        labelStyle: const TextStyle(color: kPrimaryColor),
        border: customBorder(kPrimaryColor),
        enabledBorder: customBorder(),
        focusedBorder: customBorder(kPrimaryColor),
      ),
    );
  }

  OutlineInputBorder customBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(
        8,
      ),
      borderSide: BorderSide(
        color: color ?? Colors.white,
      ),
    );
  }
}
