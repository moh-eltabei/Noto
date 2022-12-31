import 'package:flutter/material.dart';

import '../const.dart';

class CustomTextFormFiled extends StatelessWidget {
  const CustomTextFormFiled(
      {super.key,
      required this.hintText,
      this.maxLines = 1,
      this.onSaved,
      this.onChanged,
      this.initialValue});

  final String hintText;
  final int maxLines;
  final String? initialValue;
  final void Function(String?)? onSaved;
  final void Function(String?)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initialValue,
      onSaved: onSaved,
      onChanged: onChanged,
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
        border: customBorder(),
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
        color: color ?? kWhitColore,
      ),
    );
  }
}
