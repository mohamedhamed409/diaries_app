
import 'package:bloc/bloc.dart';
import 'package:diaries_app/constants.dart';
import 'package:hive/hive.dart';

import '../../models/note_model.dart';
import 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteStates> {
  AddNoteCubit() : super(AddNoteInitialState());
  addNote(NoteModel note) async {
    try {
      emit(AddNoteLoadingState());
      Box<NoteModel> noteBox = Hive.box<NoteModel>(kNoteBox);
      await noteBox.add(note); 
      emit(AddNoteSuccessState());
    } catch (e) {
      emit(AddNoteFailureState(e.toString()));
    }
  }
}
