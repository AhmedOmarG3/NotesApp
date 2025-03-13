import 'package:flutter/material.dart';
import 'package:to_do/Widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: NotesViewBody(),);
  }
}

