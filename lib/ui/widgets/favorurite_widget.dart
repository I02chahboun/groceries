import 'package:flutter/material.dart';
import 'package:groceries/constants/colors.dart';
import 'package:groceries/models/home_product.dart';
import 'package:mc/mc.dart';
class FavoruriteProduct extends StatelessWidget {
  const FavoruriteProduct({Key? key, required this.favorurites})
      : super(key: key);
  final ProductHome favorurites;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 22.0),
      child: Container(
        width: 363.6.w,
        height: 110.h,
        decoration: BoxDecoration(
          border: Border?.merge(
              const Border(bottom: BorderSide(width: 1.5, color: border)),
              const Border(top: BorderSide.none)),
        ),
        child: Align(
          alignment: Alignment.topCenter,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 220.w,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 75.9.h,
                      width: 55.91.w,
                      child: Image(image: AssetImage(favorurites.img)),
                    ),
                    Text(
                      favorurites.name,
                      style: const TextStyle(
                          fontSize: 16,
                          color: black,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 82.4.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(favorurites.price,
                        style: const TextStyle(
                            fontSize: 16,
                            color: black,
                            fontWeight: FontWeight.w500)),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 17,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
