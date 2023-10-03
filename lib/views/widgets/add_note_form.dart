import 'package:flutter/material.dart';

import 'custom_button.dart';
import 'custom_textformfield.dart';
class AddNoteForm extends StatelessWidget {
  AddNoteForm({super.key});

  final GlobalKey<FormState> formKey = GlobalKey();
  String? title, content;
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: formKey,
        autovalidateMode: autovalidateMode,
        child: Column(
          children: [
            const SizedBox(
              height: 32,
            ),
            CustomTextFormField(
              onSaved: (value) {
                title = value;
              },
              hint: 'Title',
            ),
            const SizedBox(
              height: 16,
            ),
            CustomTextFormField(
              onSaved: (value) {
                content = value;
              },
              hint: 'Content',
              maxLines: 5,
            ),
            const SizedBox(
              height: 32,
            ),
            CustomButton(
              onTap: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                } else {
                  autovalidateMode = AutovalidateMode.always;
                }
              },
            ),
            const SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
