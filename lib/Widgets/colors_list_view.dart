import 'package:flutter/material.dart';
import 'package:to_do/Widgets/color_item.dart';

class ColorsListView extends StatefulWidget {
  const ColorsListView({
    super.key,
  });

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int isCurrentIndex = 0;
  List<Color> noteColors =const [

Color(0xFF20B2AA), // Light Sea Green
Color(0xFF7B68EE), // Medium Slate Blue
Color(0xFFF08080), // Light Coral

Color(0xFF32CD32), // Lime Green
Color(0xFFFFD700), // Gold
Color(0xFFDC143C), // Crimson
Color(0xFF8A2BE2), // Blue Violet
Color(0xFF00FA9A), // Medium Spring Green

Color(0xFF00CED1), // Dark Turquoise
Color(0xFFB22222), // Firebrick

Color(0xFF2E8B57), // Sea Green
Color(0xFFFF4500), // Orange Red
Color(0xFFDAA520), // Goldenrod

Color(0xFF7FFF00), // Chartreuse

];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView.builder(
          itemCount: noteColors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              setState(() {
                isCurrentIndex = index;
              });
            },
            child: ColorItem(color: noteColors[index],
              isSelected: isCurrentIndex == index,
            ),
          ),
        ),
      ),
    );
  }
}
