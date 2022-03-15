import 'package:flutter/material.dart';
import 'package:groceries/constants/colors.dart';
import 'package:groceries/ui/widgets/favorurite_widget.dart';
import 'package:groceries/constants/images.dart';
import 'package:groceries/constants/text.dart';
import 'package:groceries/constants/util.dart';
import 'package:groceries/models/favorurite_product.dart';
import 'package:groceries/models/home_product.dart';
import 'package:groceries/ui/screens/home_page.dart';
import 'package:mc/mc.dart';

class Favorurite extends StatelessWidget {
  const Favorurite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                      child: Text(favo,
                          style: TextStyle(
                              fontSize: 20,
                              color: black,
                              fontWeight: FontWeight.bold))),
                ),
              ),
              SizedBox(
                height: 600.h,
                width: 363.6.w,
                child: ListView.builder(
                  itemCount: listfavoruriteproduct.length,
                  itemBuilder: (BuildContext context, int index) {
                    ProductHome products = listfavoruriteproduct[index];
                    return FavoruriteProduct(
                      favorurites: products,
                    );
                  },
                ),
              ),
              SizedBox(
                width: 364.w,
                height: 67.h,
                child: TextButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(green),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(19.0),
                        ),
                      )),
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return Dialog(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            ),
                            child: SizedBox(
                              height: 610.93.h,
                              width: 368.w,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                //crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: IconButton(
                                        onPressed: () {
                                          context.pop();
                                        },
                                        icon: const Icon(
                                          Icons.clear,
                                          color: black,
                                        )),
                                  ),
                                  SizedBox(
                                      height: 221.85.h,
                                      width: 222.35.w,
                                      child: Image.asset(dialog)),
                                  const Text(
                                    oops,
                                    style:
                                        TextStyle(fontSize: 25, color: black),
                                  ),
                                  SizedBox(
                                    height: 40.h,
                                  ),
                                  SizedBox(
                                    width: 280.w,
                                    height: 67.h,
                                    child: TextButton(
                                        style: ButtonStyle(
                                          shape: MaterialStateProperty.all<
                                                  RoundedRectangleBorder>(
                                              RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(19.0),
                                          )),
                                          backgroundColor:
                                              MaterialStateProperty.all(green),
                                        ),
                                        onPressed: () {},
                                        child: const Text(
                                          please,
                                          style: TextStyle(
                                              fontSize: 18, color: pleasecolor),
                                        )),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      context.push(HomePage());
                                    },
                                    child: const Text(
                                      back,
                                      style:
                                          TextStyle(fontSize: 18, color: black),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        });
                  },
                  child: const Text(favobutton,
                      style: TextStyle(
                          fontSize: 18,
                          color: white20,
                          fontWeight: FontWeight.w700)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
