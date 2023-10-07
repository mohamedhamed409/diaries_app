import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';

import '../../constants.dart';
import '../../models/note_model.dart';
import 'note_states.dart';

class NoteCubit extends Cubit<NoteStates> {
  NoteCubit() : super(NoteInitialState());
  static get(context) => BlocProvider.of(context);

  fetchAllNotes() {
    try {
      Box<NoteModel> noteBox = Hive.box<NoteModel>(kNoteBox);
      emit(NoteSuccessState(noteBox.values.toList()));
    } catch (e) {
      emit(NoteFailureState(e.toString()));
    }
  }
}
