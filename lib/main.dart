import 'package:diaries_app/bloc_observer.dart';
import 'package:diaries_app/views/notes_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'constants.dart';
import 'models/note_model.dart';

void main() async {
    WidgetsFlutterBinding.ensureInitialized();
      Bloc.observer = SimpleBlocObserver();

  await Hive.initFlutter(); //import hive_flutter
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNoteBox);

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
