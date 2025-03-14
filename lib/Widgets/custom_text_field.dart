import 'package:flutter/material.dart';
import 'package:to_do/Constants/constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint,  this.maxLines=1});
  final String hint;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return TextField(maxLines: maxLines,
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
