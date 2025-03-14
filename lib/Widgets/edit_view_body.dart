import 'package:flutter/material.dart';
import 'package:to_do/Widgets/custom_app_bar.dart';
import 'package:to_do/Widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(
            icon: Icons.done,
            title: 'Edit Note',
          ),
          SizedBox(
            height: 50,
          ),
          Material(
            child: CustomTextField(
              hint: 'Title',
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Material(
            child: CustomTextField(
              hint: 'Content',
              maxLines: 5,
            ),
          ),
        ],
      ),
    );
  }
}
