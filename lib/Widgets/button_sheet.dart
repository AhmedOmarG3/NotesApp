import 'package:flutter/material.dart';
import 'package:to_do/Widgets/custom_button.dart';
import 'package:to_do/Widgets/custom_text_field.dart';
import 'package:to_do/Widgets/note_form.dart';

class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: NoteForm(),
      ),
    );
  }
}


