import 'package:flutter/material.dart';
import 'package:to_do/Widgets/custom_container.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Notes',
          style: TextStyle( fontSize: 28),
        ),
        CustomContainer(),
      ],
    );
  }
}
