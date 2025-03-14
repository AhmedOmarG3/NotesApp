import 'package:flutter/material.dart';
import 'package:to_do/Constants/constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kprimaryColor,
      decoration: InputDecoration(
          hintText: 'Title',
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
