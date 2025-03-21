import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:to_do/Constants/constant.dart';
import 'package:to_do/Models/note_model.dart';
import 'package:to_do/cubits/add_note_cubit/add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  Color color=const Color(0xFF20B2AA);

  addNote(NoteModel note) async {
    note.color = color.value;
    emit(AddNoteLoading());
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      await notesBox.add(note);
      
      emit(AddNoteSuccess());
    } catch (e) {
      emit(AddNoteFailure(errorMessege: e.toString()));
    }
  }
}
