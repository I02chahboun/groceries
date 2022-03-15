import 'package:flutter/material.dart';
import 'package:groceries/constants/colors.dart';

class PersonalInformation extends StatelessWidget {
  final String ttile;
  final IconData icn;
  // ignore: use_key_in_widget_constructors
  const PersonalInformation(this.ttile,this.icn);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border?.merge(
            const Border(bottom: BorderSide(width: 1.5, color: border)),
            const Border(top: BorderSide.none)),
      ),
      child: ListTile(
        leading: Icon(
          icn,
          size: 22,
          color: black,
        ),
        title: Text(
          ttile,
          style: const TextStyle(
              fontSize: 16, color: black, fontWeight: FontWeight.w600),
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios_outlined,
          size: 18,
          color: black,
        ),
      ),
    );
  }
}