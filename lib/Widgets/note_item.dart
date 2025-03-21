import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do/Models/note_model.dart';
import 'package:to_do/Widgets/edit_view_body.dart';
import 'package:to_do/cubits/note_cubit/notes_cubit_cubit.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, this.color, required this.note});
  final Color? color;
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => EditNoteViewBody(note: note,)));
      },
      child: Container(
          padding: EdgeInsets.only(top: 35, bottom: 35, left: 20, right: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Color(note.color)),
          child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
            ListTile(
              title: Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Text(
                  note.title,
                  style: TextStyle(color: Colors.black, fontSize: 25),
                ),
              ),
              subtitle: Text(
                note.subTitle,
                style: TextStyle(
                    color: Colors.black.withOpacity(0.5), fontSize: 18),
              ),
              trailing: IconButton(
                  onPressed: () {
                    note.delete();
                    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                  },
                  icon: Icon(
                    Icons.delete,
                    color: Colors.black,
                    size: 35,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Text(note.date,
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.5), fontSize: 20)),
            )
          ])),
    );
  }
}
