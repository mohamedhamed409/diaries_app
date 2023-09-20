import 'package:diaries_app/views/widgets/custom_appbar.dart';
import 'package:diaries_app/views/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
        top: 32,
        left: 24,
        right: 24,
        bottom: 16,
      ),
      child: Column(
        children: [
          CustomAppBar(
            title: 'Edit Note',
            icon: Icons.done,
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextField(
            hint: 'title',
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextField(
            hint: 'content',
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}
