import 'package:flutter/material.dart';
import 'package:to_do/Models/note_model.dart';

import 'package:to_do/Widgets/edit_view_body.dart';

class EditNotesView extends StatelessWidget {
  const EditNotesView({super.key, required this.note});
final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(body: EditNoteViewBody( note: note,));
  }
}
