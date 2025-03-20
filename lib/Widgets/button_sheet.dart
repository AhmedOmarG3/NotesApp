import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:to_do/Widgets/custom_button.dart';
import 'package:to_do/Widgets/custom_text_field.dart';
import 'package:to_do/Widgets/note_form.dart';
import 'package:to_do/add_note_cubit/add_note_cubit.dart';
import 'package:to_do/add_note_cubit/add_note_state.dart';

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
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return AbsorbPointer(absorbing: state is AddNoteLoading?true:false,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: SingleChildScrollView(child: NoteForm()),
            ),
          );
        },
      ),
    );
  }
}
