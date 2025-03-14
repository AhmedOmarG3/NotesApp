import 'package:flutter/material.dart';
import 'package:to_do/Widgets/button_sheet.dart';
import 'package:to_do/Widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        backgroundColor: Colors.cyan,
        onPressed: () {
          showModalBottomSheet(
              context: context, builder: (context) => AddNoteButtonSheet());
        },
        child: Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
      body: const NotesViewBody(),
    );
  }
}


