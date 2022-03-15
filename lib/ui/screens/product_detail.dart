// ignore: duplicate_ignore
// ignore: duplicate_ignore
// ignore: duplicate_ignore
// ignore_for_file: file_names, duplicate_ignore

// ignore: file_names
// ignore: file_names
import 'package:flutter/material.dart';
import 'package:groceries/constants/colors.dart';
import 'package:groceries/constants/text.dart';
import 'package:groceries/constants/util.dart';
import 'package:groceries/models/cart_product.dart';
import 'package:groceries/models/favorurite_product.dart';
import 'package:groceries/models/home_product.dart';
import 'package:mc/mc.dart';

import 'home_page.dart';

// ignore: must_be_immutable
class ProductDetail extends StatelessWidget {
  final ProductHome product;

  late McValue<bool> favorite;
  ProductDetail(
    this.product, {
    Key? key,
  }) : super(key: key) {
    favorite = listfavoruriteproduct.contains(product).mini;
  }
  final int nm = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: white,
        body: SingleChildScrollView(
          child: SizedBox(
            width: 414.w,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding:
                      const EdgeInsets.only(right: 12, top: 10),
                  width: 413.6.w,
                  height: 371.44.h,
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:  [
                        IconButton(
                          onPressed: (){
                            context.pushR(HomePage());
                          },
                          icon: const Icon(
                          Icons.arrow_back_ios,
                          size: 22,
                          color: ioscolor,
                        ),
                        ),
                        const Icon(
                          Icons.save_alt_rounded,
                          size: 22,
                          color: ioscolor,
                        ),
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25)),
                    color: grey03,
                    image: DecorationImage(
                        fit: BoxFit.scaleDown, image: AssetImage(product.img)),
                  ),
                ),
                SizedBox(
                  height: 18.h,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(product.name,
                        style: const TextStyle(
                            fontSize: 24,
                            color: grey,
                            fontWeight: FontWeight.w600)),
                            const Text(kg,style: TextStyle(fontSize: 16,color: grey04,fontWeight: FontWeight.w600),)
                        ],
                      ),
                      McMV(favorite, () {
                        return IconButton(
                          onPressed: () {
                            if (!favorite.v) {
                              listfavoruriteproduct.add(product);
                            } else {
                              listfavoruriteproduct.remove(product);
                            }
                            favorite.v = !favorite.v;
                          },
                          icon: Icon(
                            favorite.v
                                ? Icons.favorite
                                : Icons.favorite_border,
                            color: Colors.red,
                            size: 24,
                          ),
                        );
                      }),
                    ],
                  ),
                ),
                SizedBox(height: 22.h,),
                Container(
                  width: 414.w,
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 119.67.w,
                        child: Row(
                          mainAxisAlignment:
                              MainAxisAlignment.spaceAround,
                          children: [
                            const Text(
                              "-",
                              style: TextStyle(
                                  color: mois,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w700),
                            ),
                            Container(
                              height: 55.67.h,
                              width: 45.67.w,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 1,
                                  color: border,
                                ),
                                borderRadius: BorderRadius.circular(17),
                              ),
                              child: Center(
                                  child: Text(
                                nm.toString(),
                                style: const TextStyle(
                                    fontSize: 18,
                                    color: black,
                                    fontWeight: FontWeight.w600),
                              )),
                            ),
                            const Text(
                              "+",
                              style: TextStyle(
                                  fontSize: 27,
                                  color: green,
                                  fontWeight: FontWeight.w700),
                            )
                          ],
                        ),
                      ),
                      Text(
                        product.price,
                        style: const TextStyle(
                            color: black,
                            fontSize: 24,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                  SizedBox(height: 10.h,),
                const ExpansionTile(
                  title: Text(
                    pd,
                    style: TextStyle(
                        color: black,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                  children: <Widget>[
                    ListTile(title: Text('This is tile number 1')),
                  ],
                ),
                const ExpansionTile(
                  title: Text(
                    nu,
                    style: TextStyle(
                        color: black,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                  children: <Widget>[
                    ListTile(title: Text('This is tile number 1')),
                  ],
                ),
                const ExpansionTile(
                  title: Text(
                    re,
                    style: TextStyle(
                        color: black,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                  children: <Widget>[
                    ListTile(title: Text('This is tile number 1')),
                  ],
                ),
                SizedBox(
                  height: 67.h,
                  width: 364.w,
                  child: TextButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(green),
                          shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(19),
                          ))),
                      onPressed: () {
                        listcartproduct.add(product);
                      },
                      child: const Text(buttontxt,
                          style: TextStyle(
                              fontSize: 18,
                              color: white,
                              fontWeight: FontWeight.bold))),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
