import 'package:flutter/material.dart';
import 'package:to_do/Views/notes_view.dart';

void main() {
  runApp(ToDOApp());
}

class ToDOApp extends StatelessWidget {
  const ToDOApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark),
      home: NotesView(),
    );
  }
}
