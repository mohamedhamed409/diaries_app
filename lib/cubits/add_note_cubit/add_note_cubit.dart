import 'package:bloc/bloc.dart';

import 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteStates> {
  AddNoteCubit():super(AddNoteInitialState());
  
}
