import 'package:flutter/material.dart';
import 'package:groceries/constants/colors.dart';
import 'package:groceries/constants/util.dart';
import 'package:groceries/models/cart_product.dart';
import 'package:groceries/models/home_product.dart';
import 'package:groceries/ui/screens/product_detail.dart';
import 'package:mc/mc.dart';
class HomeProduct extends StatelessWidget {
  // ignore: non_constant_identifier_names
  const HomeProduct({Key? key, required this.ProductsHome}) : super(key: key);
  // ignore: non_constant_identifier_names
  final ProductHome ProductsHome;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 13.0, top: 9),
      child: InkWell(
        onTap: () {
          context.push(ProductDetail(ProductsHome));
        },
        child: Container(
          padding: const EdgeInsets.only(top: 15),
          height: 240.51.h,
          width: 173.32.w,
          decoration: BoxDecoration(
            color: white,
            borderRadius: BorderRadius.circular(18),
            border: Border.all(color: grey01, width: 0.2),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 85.56.h,
                width: 103.43.w,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      //    fit: BoxFit.fill,
                      image: AssetImage(ProductsHome.img)),
                ),
              ),
              Text(ProductsHome.name,
                  style: const TextStyle(
                      fontSize: 14, color: grey, fontWeight: FontWeight.w700)),
              SizedBox(
                height: 1.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    ProductsHome.price,
                    style: const TextStyle(
                        fontSize: 18, color: grey, fontWeight: FontWeight.w600),
                  ),
                  Container(
                    padding: EdgeInsets.zero,
                    height: 55.67.h,
                    width: 47.67.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: green,
                    ),
                    child: Center(
                        child: IconButton(
                      icon: const Icon(
                        Icons.add,
                        color: white,
                      ),
                      onPressed: () {
                        if (!listcartproduct.contains(ProductsHome)) {
                          listcartproduct.add(ProductsHome);
                        }
                      },
                    )),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}