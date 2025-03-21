import 'package:flutter/material.dart';
import 'package:to_do/Widgets/custom_container.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.icon, required this.title, this.onPressed});
  final IconData icon;
  final String title;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
              decoration: TextDecoration.none,
              fontSize: 28,
              color: Colors.white),
        ),
        CustomContainer(onPressed: onPressed,
          icon: icon,
        ),
      ],
    );
  }
}
