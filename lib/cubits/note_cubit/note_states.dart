import 'package:diaries_app/models/note_model.dart';

abstract class NoteStates {}

class NoteInitialState extends NoteStates {}

class NoteLoadingState extends NoteStates {}

class NoteSuccessState extends NoteStates {
  final List<NoteModel> notes;

  NoteSuccessState(this.notes);
}

class NoteFailureState extends NoteStates {
  final String errorMessage;

  NoteFailureState(this.errorMessage);
}
