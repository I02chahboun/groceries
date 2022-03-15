import 'package:flutter/material.dart';
import 'package:groceries/constants/colors.dart';
import 'package:groceries/models/home_product.dart';
import 'package:mc/mc.dart';
class GroceriesProduct extends StatelessWidget {
  const GroceriesProduct({Key? key, required this.groceproduct})
      : super(key: key);
  final GroceProduct groceproduct;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        height: 105.h,
        width: 248.19.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: Colors.orange[100],
        ),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(image: AssetImage(groceproduct.img)),
            SizedBox(
              width: 10.w,
            ),
            Text(
              groceproduct.name,
              style: const TextStyle(
                  fontSize: 20,
                  color: pulsescolor,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}