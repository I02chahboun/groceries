import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:groceries/constants/colors.dart';
import 'package:groceries/constants/images.dart';
import 'package:groceries/constants/text.dart';
import 'package:groceries/constants/util.dart';
import 'package:groceries/models/cart_product.dart';
import 'package:groceries/models/home_product.dart';
import 'package:groceries/ui/widgets/buttom_sheet.dart';
import 'package:groceries/ui/widgets/cart_widget.dart';
import 'package:mc/mc.dart';

class MyCart extends StatelessWidget {
  const MyCart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final McValue controller = McValue(null);
    return SafeArea(
      child: Scaffold(
        backgroundColor: white,
        body: SizedBox(
          height: 896.h,
          width: 414.w,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  height: 80.h,
                  width: 414.w,
                  decoration: BoxDecoration(
                    border: Border?.merge(
                        const Border(
                            bottom: BorderSide(width: 1.5, color: border)),
                        const Border(top: BorderSide.none)),
                  ),
                  child: const Center(
                      child: Text(my,
                          style: TextStyle(
                              fontSize: 20,
                              color: black,
                              fontWeight: FontWeight.bold))),
                ),
              ),
              SizedBox(
                height: 600.h,
                width: 363.w,
                child: McMV(controller, () {
                  return ListView.builder(
                    itemCount: listcartproduct.length,
                    itemBuilder: (BuildContext context, int index) {
                      ProductHome cartsproducts = listcartproduct[index];
                      return CartProduct(
                          carts: cartsproducts, controller: controller);
                    },
                  );
                }),
              ),
              SizedBox(
                width: 364.w,
                height: 67.h,
                child: TextButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(green),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(19.0),
                          ),
                        )),
                    onPressed: () {
                      showBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return BottomSheet(
                                onClosing: () {},
                                builder: (BuildContext context) {
                                  return Container(
                                    padding: const EdgeInsets.only(left: 23),
                                    height: 531.h,
                                    width: 414.w,
                                    decoration: const BoxDecoration(
                                        color: grey03,
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(30),
                                            topRight: Radius.circular(30)),
                                        boxShadow: [
                                          BoxShadow(
                                              color: grey04,
                                              blurRadius: 10,
                                              spreadRadius: 0.1),
                                        ]),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Align(
                                          alignment: Alignment.topCenter,
                                          child: Container(
                                            padding: const EdgeInsets.only(
                                                bottom: 10),
                                            decoration: BoxDecoration(
                                              border: Border?.merge(
                                                  const Border(
                                                      bottom: BorderSide(
                                                          width: 1.5,
                                                          color: border)),
                                                  const Border(
                                                      top: BorderSide.none)),
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                const Text(
                                                  check,
                                                  style: TextStyle(
                                                      fontSize: 24,
                                                      color: black),
                                                ),
                                                IconButton(
                                                  onPressed: () {
                                                    context.pop();
                                                  },
                                                  icon: const Icon(Icons.clear,
                                                      color: black, size: 25),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        ButtomShet(
                                            icon: const Text(
                                              select,
                                              style: TextStyle(
                                                  color: black,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                            txt: delivery,
                                            wid: 148.w),
                                        ButtomShet(
                                            icon: Image.asset(pamentimg),
                                            txt: pament,
                                            wid: 63.w),
                                        ButtomShet(
                                            icon: const Text(
                                              pick,
                                              style: TextStyle(
                                                  color: black,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                            txt: promo,
                                            wid: 147.w),
                                        ButtomShet(
                                            icon: const Text(
                                              "\$13.97",
                                              style: TextStyle(
                                                  color: black,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                            txt: total,
                                            wid: 97.w),
                                        const Text(
                                          placing,
                                          style: TextStyle(
                                              fontSize: 14, color: grey04),
                                        ),
                                        SizedBox(
                                          width: 364.w,
                                          height: 67.h,
                                          child: TextButton(
                                            onPressed: () {
                                              showDialog(
                                                  context: context,
                                                  builder:
                                                      (BuildContext context) {
                                                    return Dialog(
                                                      child: ImageFiltered(
                                                        imageFilter:
                                                            ImageFilter.blur(),
                                                        child: Container(
                                                          color: flowcolor,
                                                          height: 896.h,
                                                          width: 414.w,
                                                          child: Column(
                                                            children: [
                                                              Image.asset(
                                                                  order),
                                                              const Text(
                                                                txtOrder,
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        25,
                                                                    color:
                                                                        black,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600),
                                                              ),
                                                              SizedBox(
                                                                child:
                                                                    TextButton(
                                                                  style: ButtonStyle(
                                                                      backgroundColor: MaterialStateProperty.all(green),
                                                                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                                                        RoundedRectangleBorder(
                                                                          borderRadius:
                                                                              BorderRadius.circular(19.0),
                                                                        ),
                                                                      )),
                                                                  onPressed:
                                                                      () {},
                                                                  child:
                                                                      const Text(
                                                                    track,
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            18,
                                                                        color:
                                                                            pleasecolor,
                                                                        fontWeight:
                                                                            FontWeight.w600),
                                                                  ),
                                                                ),
                                                              ),
                                                              TextButton(
                                                                onPressed:
                                                                    () {},
                                                                child:
                                                                    const Text(
                                                                  back,
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          18,
                                                                      color:
                                                                          black,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  });
                                            },
                                            style: ButtonStyle(
                                                backgroundColor:
                                                    MaterialStateProperty.all(
                                                        green),
                                                shape:
                                                    MaterialStateProperty.all<
                                                        RoundedRectangleBorder>(
                                                  RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            19.0),
                                                  ),
                                                )),
                                            child: const Text(
                                              titleBtn,
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  color: pleasecolor,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                });
                          });
                    },
                    child: Container(
                      width: 364.w,
                      height: 67.h,
                      padding: const EdgeInsets.only(left: 100),
                      child: Row(
                        children: [
                          const Text(go,
                              style: TextStyle(
                                color: white,
                              )),
                          SizedBox(
                            width: 60.h,
                          ),
                          Container(
                            height: 25.h,
                            width: 50.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: green20,
                            ),
                            child: const Center(
                              child: Text(
                                "\$12.96",
                                style: TextStyle(
                                    fontSize: 11,
                                    color: white20,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
