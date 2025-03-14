import 'package:flutter/material.dart';
import 'package:to_do/Widgets/custom_button.dart';
import 'package:to_do/Widgets/custom_text_field.dart';

class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            CustomTextField(
              hint: 'Title',
            ),
            SizedBox(
              height: 8,
            ),
            CustomTextField(
              hint: 'Content',
              maxLines: 5,
            ),
            SizedBox(
              height: 50,
            ),
            CustomButton(),
            SizedBox(
              height: 24,
            ),
          ],
        ),
      ),
    );
  }
}
