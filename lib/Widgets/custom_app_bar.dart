import 'package:flutter/material.dart';
import 'package:to_do/Widgets/custom_container.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.icon});
 final IconData icon;
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Notes',
          style: TextStyle(fontSize: 28),
        ),
        CustomContainer(
          icon: icon,
        ),
      ],
    );
  }
}
