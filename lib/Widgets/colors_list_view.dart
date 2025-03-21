import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do/Constants/constant.dart';
import 'package:to_do/Widgets/color_item.dart';
import 'package:to_do/cubits/add_note_cubit/add_note_cubit.dart';

class ColorsListView extends StatefulWidget {
  const ColorsListView({
    super.key,
  });

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int isCurrentIndex = 0;
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: ListView.builder(
          itemCount: noteColors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              isCurrentIndex = index;
              BlocProvider.of<AddNoteCubit>(context).color=noteColors[index];
              setState(() {
                
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
