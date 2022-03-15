import 'package:flutter/material.dart';
import 'package:groceries/constants/colors.dart';
import 'package:groceries/models/cart_product.dart';
import 'package:groceries/models/home_product.dart';
import 'package:mc/mc.dart';
class CartProduct extends StatelessWidget {
  const CartProduct({
    Key? key,
    required this.carts,
    required this.controller,
  }) : super(key: key);
  final ProductHome carts;
  final McValue controller;

  @override
  Widget build(BuildContext context) {
    late int one = 1;
    controller.registerListener("smail", () {});
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border?.merge(
              const Border(bottom: BorderSide(width: 1.5, color: border)),
              const Border(top: BorderSide.none)),
        ),
        // color: Colors.yellow,
        width: 363.6.w,
        height: 178.h,
        child: Align(
          alignment: Alignment.topCenter,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 70.43.w,
                height: 90.69.h,
                child: Image(
                  //fit: BoxFit.cover,
                  image: AssetImage(carts.img),
                ),
              ),
              SizedBox(
                height: 135.h,
                width: 143.w,
                // color: Colors.orange,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      carts.name,
                      style: const TextStyle(
                          fontSize: 16,
                          color: black,
                          fontWeight: FontWeight.w700),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.zero,
                          height: 54.67.h,
                          width: 45.67.w,
                          decoration: BoxDecoration(
                            border: Border.all(width: 1, color: border),
                            borderRadius: BorderRadius.circular(17),
                          ),
                          child: const Center(
                              child: Text(
                            "-",
                            style: TextStyle(
                                fontSize: 26,
                                color: mois,
                                fontWeight: FontWeight.bold),
                          )),
                        ),
                        Text(
                          one.toString(),
                          style: const TextStyle(
                              fontSize: 16,
                              color: black,
                              fontWeight: FontWeight.w600),
                        ),
                        Container(
                          padding: const EdgeInsets.only(right: 10),
                          height: 54.67.h,
                          width: 45.67.w,
                          decoration: BoxDecoration(
                            border: Border.all(width: 1, color: border),
                            borderRadius: BorderRadius.circular(17),
                          ),
                          child: IconButton(
                            onPressed: () {
                              one++;
                            },
                            icon: const Icon(
                              Icons.add,
                              color: green,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 125.h,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () {
                        listcartproduct.remove(carts);
                        controller.rebuildWidget();
                      },
                      icon: const Icon(
                        Icons.clear,
                        size: 22,
                        color: mois,
                      ),
                    ),
                    Text(
                      carts.price,
                      style: const TextStyle(
                          fontSize: 18,
                          color: black,
                          fontWeight: FontWeight.w600),
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