import 'package:diaries_app/constants.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
          hintText: 'Title',
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
