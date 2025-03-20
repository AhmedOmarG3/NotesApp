import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:to_do/Constants/constant.dart';
import 'package:to_do/Models/note_model.dart';

import 'package:to_do/Views/notes_view.dart';
import 'package:to_do/add_note_cubit/add_note_cubit.dart';
import 'package:to_do/add_note_cubit/add_note_state.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);
  Hive.registerAdapter(NoteModelAdapter());
  runApp(ToDOApp());
}

class ToDOApp extends StatelessWidget {
  const ToDOApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [BlocProvider(create: (context)=>AddNoteCubit())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
        home: NotesView(),
      ),
    );
  }
}
