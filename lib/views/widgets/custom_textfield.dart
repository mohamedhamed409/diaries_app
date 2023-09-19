import 'package:diaries_app/constants.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key,this.hint,this.maxLines=1});
  final String? hint;
  final int? maxLines;
  @override
  Widget build(BuildContext context) {
    return TextField(
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
