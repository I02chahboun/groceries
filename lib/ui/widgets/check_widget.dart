import 'package:flutter/material.dart';
import 'package:groceries/constants/colors.dart';
import "package:mc/mc.dart";
class Check extends StatelessWidget {
  const Check({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.07.h,
      width: 24.07.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(width: 2, color: bordercolor),
      ),
    );
    //Checkbox(onChanged: (bool? value) {  },);
  }
}