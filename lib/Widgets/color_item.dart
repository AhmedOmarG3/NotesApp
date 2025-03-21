import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: const CircleAvatar(
        radius: 32,
        backgroundColor: Colors.orange,
      ),
    );
  }
}