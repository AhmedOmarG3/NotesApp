import 'package:flutter/material.dart';
import 'package:to_do/Constants/constant.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onTap});
final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap:onTap ,
      child: Container(
        height: 55,
        width: MediaQuery.of(context).size.width,
        child: Center(
            child: Text(
          'Add',
          style: TextStyle(
              fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
        )),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: kprimaryColor,
        ),
      ),
    );
  }
}
