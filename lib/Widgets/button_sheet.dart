import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do/Widgets/note_form.dart';

import 'package:to_do/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:to_do/cubits/add_note_cubit/add_note_state.dart';
import 'package:to_do/cubits/note_cubit/notes_cubit_cubit.dart';

class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteSuccess) {
           
            Navigator.pop(context); BlocProvider.of<NotesCubit>(context).fetchAllNotes();
          }
        },
        builder: (context, state) {
          return AbsorbPointer(absorbing: state is AddNoteLoading?true:false,
            child: Padding(
              padding: EdgeInsets.only(left: 16, right: 16, bottom: MediaQuery.of(context).viewInsets.bottom),
              child: SingleChildScrollView(child: NoteForm()),
            ),
          );
        },
      ),
    );
  }
}
