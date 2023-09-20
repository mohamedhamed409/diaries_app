import 'package:diaries_app/constants.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key, this.hint, this.maxLines = 1, this.onSaved});
  final String? hint;
  final int? maxLines;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (val) {
        if (val?.isEmpty ?? true) {
          return 'field is required';
        } else {
          return null;
        }
      },
      onSaved: onSaved,
      cursorColor: kPrimaryColor,
      maxLines: maxLines,
      decoration: InputDecoration(
          hintText: hint,
          border: customBorder(),
          enabledBorder: customBorder(),
          focusedBorder: customBorder(kPrimaryColor)),
    );
  }

  OutlineInputBorder customBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(color: color ?? Colors.white),
    );
  }
}
