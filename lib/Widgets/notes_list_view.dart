import 'package:flutter/material.dart';
import 'package:to_do/Widgets/note_item.dart';

class NotesListView extends StatelessWidget {
  NotesListView({
    super.key,
  });
  List<Widget> list = [
    NoteItem(
      color: Color(0xffFFCD7A),
    ),
    NoteItem(color: Colors.cyan),
    NoteItem(
      color: Colors.deepOrange,
    ),
    NoteItem(
      color: Colors.grey,
    )
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: list[index],
      ),
      itemCount: list.length,
    );
  }
}
