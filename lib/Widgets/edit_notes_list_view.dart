import 'package:flutter/material.dart';
import 'package:to_do/Constants/constant.dart';
import 'package:to_do/Models/note_model.dart';
import 'package:to_do/Widgets/color_item.dart';

class EditeNotesColorList extends StatefulWidget {
  const EditeNotesColorList({super.key, required this.note});
  final NoteModel note;
  @override
  State<EditeNotesColorList> createState() => _EditeNotesColorListState();
}

class _EditeNotesColorListState extends State<EditeNotesColorList> {
  late int isCurrentIndex;
  @override
  void initState() {
    isCurrentIndex = noteColors.indexOf(Color(widget.note.color));
    ;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: ListView.builder(
          itemCount: noteColors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              isCurrentIndex = index;
              widget.note.color = noteColors[index].value;
              setState(() {});
            },
            child: ColorItem(
              color: noteColors[index],
              isSelected: isCurrentIndex == index,
            ),
          ),
        ),
      ),
    );
  }
}
