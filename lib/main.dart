import 'package:diaries_app/views/notes_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DiariesApp());
}

class DiariesApp extends StatelessWidget {
  const DiariesApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(brightness: Brightness.dark),
      home:const  NotesView(),
      debugShowCheckedModeBanner: false,
    );
  }
}
