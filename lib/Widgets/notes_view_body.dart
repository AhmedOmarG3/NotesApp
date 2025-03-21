import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do/Widgets/custom_app_bar.dart';
import 'package:to_do/Widgets/notes_list_view.dart';
import 'package:to_do/cubits/note_cubit/notes_cubit_cubit.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({
    super.key,
  });

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
    
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(icon: Icons.search,title: 'Notes',),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: NotesListView(),
          )
        ],
      ),
    );
  }
}
