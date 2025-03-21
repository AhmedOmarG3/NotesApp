import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do/Models/note_model.dart';
import 'package:to_do/Widgets/note_item.dart';
import 'package:to_do/cubits/note_cubit/notes_cubit_cubit.dart';

class NotesListView extends StatelessWidget {
  NotesListView({
    super.key,
  });
  
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesCubitState>(
      builder: (context, state) {
        List<NoteModel> notes = BlocProvider.of<NotesCubit>(context).note!??[];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: ListView.builder(
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: NoteItem(note: notes[index],),
            ),
            itemCount: notes.length, 
          ),
        );
      },
    );
  }
}
