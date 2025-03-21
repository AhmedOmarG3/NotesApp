import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:to_do/Constants/constant.dart';
import 'package:to_do/Models/note_model.dart';

part 'notes_cubit_state.dart';

class NotesCubit extends Cubit<NotesCubitState> {
  NotesCubit() : super(NotesCubitInitial());



  fetchAllNotes()async{
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
     List<NoteModel>note = notesBox.values.toList();
      emit(AddNoteSuccess(notes: note));
    } catch (e) {
      emit(AddNoteFailure(errorMessege: e.toString()));
    }
  }
}
