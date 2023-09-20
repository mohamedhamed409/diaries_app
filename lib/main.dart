import 'package:diaries_app/views/notes_view.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'constants.dart';

void main() async {
  await Hive.initFlutter(); //import hive_flutter
  await Hive.openBox(kNoteBox);
  runApp(const DiariesApp());
}

class DiariesApp extends StatelessWidget {
  const DiariesApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'Poppins',
      ),
      home: const NotesView(),
      debugShowCheckedModeBanner: false,
    );
  }
}
