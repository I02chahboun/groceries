import 'package:flutter/material.dart';
import 'package:groceries/constants/colors.dart';
import 'package:mc/mc.dart';
// ignore: must_be_immutable
class ButtomShet extends StatelessWidget {
  ButtomShet(
      {Key? key, required this.icon, required this.txt, required this.wid})
      : super(key: key);
  Widget icon;
  final String txt;
  double wid;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 20),
      width: 364.w,
      decoration: BoxDecoration(
        border: Border?.merge(
            const Border(bottom: BorderSide(width: 1.5, color: border)),
            const Border(top: BorderSide.none)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            txt,
            style: const TextStyle(color: grey04, fontSize: 18),
          ),
          SizedBox(
            // color:green,
            width: wid,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                icon,
                const Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                  color: black,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}