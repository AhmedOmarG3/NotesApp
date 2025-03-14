import 'package:flutter/material.dart';
import 'package:to_do/Widgets/custom_app_bar.dart';
import 'package:to_do/Widgets/notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({
    super.key,
  });

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
