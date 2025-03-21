import 'package:flutter/material.dart';
import 'package:to_do/Constants/constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, required this.hint, this.maxLines = 1, this.onSaved, this.onChanged});
  final String hint;
  final int maxLines;
  final void Function(String?)? onSaved;
  final void Function(String?)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(onChanged: onChanged,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field is required';
        } else
          {return null;}
      },
      onSaved: onSaved,
      maxLines: maxLines,
      cursorColor: kprimaryColor,
      decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(fontSize: 20),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(kprimaryColor)),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide:
            BorderSide(color: color == null ? Colors.white : kprimaryColor));
  }
}
