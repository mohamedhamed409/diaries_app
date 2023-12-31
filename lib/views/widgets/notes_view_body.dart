import 'package:diaries_app/views/widgets/notes_listview.dart';
import 'package:flutter/material.dart';

import 'custom_appbar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

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
          // SizedBox(
          //   height: 40,
          // ),
          CustomAppBar(title: 'Notes',icon: Icons.search,),
          SizedBox(
            height: 16,
          ),
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}
