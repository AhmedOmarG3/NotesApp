import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do/Models/note_model.dart';
import 'package:to_do/Widgets/custom_app_bar.dart';
import 'package:to_do/Widgets/custom_text_field.dart';
import 'package:to_do/Widgets/edit_notes_list_view.dart';
import 'package:to_do/cubits/note_cubit/notes_cubit_cubit.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({
    super.key,
    required this.note,
  });
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          CustomAppBar(
            onPressed: () async {
              widget.note.title = title ?? widget.note.title;
              widget.note.subTitle = content ?? widget.note.subTitle;
              await widget.note.save();
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            },
            icon: Icons.done,
            title: 'Edit Note',
          ),
          const SizedBox(
            height: 50,
          ),
          Material(
            child: CustomTextField(
              onChanged: (value) {
                title = value;
              },
              hint: widget.note.title,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Material(
            child: CustomTextField(
              onChanged: (value) {
                content = value;
              },
              hint: widget.note.subTitle,
              maxLines: 5,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          EditeNotesColorList(
            note: widget.note,
          ),
        ],
      ),
    );
  }
}

