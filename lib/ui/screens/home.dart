import 'package:flutter/material.dart';
import 'package:groceries/constants/colors.dart';
import 'package:groceries/constants/images.dart';
import 'package:groceries/constants/text.dart';
import 'package:groceries/models/home_product.dart';
import 'package:groceries/ui/widgets/groceries_widget.dart';
import 'package:groceries/ui/widgets/home_widget.dart';
import 'package:mc/mc.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: white,
        body: SingleChildScrollView(
          child: SizedBox(
            width: 414.w,
            height: 1553.h,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 300.w,
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Image(image: AssetImage(logored)),
                      Container(
                        width: 270.w,
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Row(
                          children: const [
                            Icon(Icons.location_city),
                            Text(
                              ma,
                              style: TextStyle(fontSize: 18, color: grey02),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  // color: grey03,
                  width: 385.w,
                  height: 51.57.h,
                  child: TextField(
                    style: const TextStyle(color: grey),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                          color: grey03,
                        ),
                      ),
                      fillColor: grey03,
                      filled: true,
                      hoverColor: grey03,
                      focusColor: grey01,
                      prefixIcon: const Icon(
                        Icons.search,
                        color: grey,
                      ),
                      hintText: search,
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 10.0),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: grey03),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 385.w,
                  height: 115.04.h,
                  decoration: BoxDecoration(
                    //color: white,
                    borderRadius: BorderRadius.circular(8),
                    gradient: const LinearGradient(
                      stops: [
                        20,
                        70,
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        gradient01,
                        white,
                      ],
                    ),
                  ),
                  child: Stack(
                    children: [
                      const Align(
                          alignment: Alignment.topRight,
                          child: Image(image: AssetImage(image01))),
                      const Align(
                          alignment: Alignment.bottomRight,
                          child: Image(image: AssetImage(image02))),
                      const Align(
                          alignment: Alignment.centerLeft,
                          child: Image(image: AssetImage(image03))),
                      const Align(
                          alignment: Alignment.topLeft,
                          child: Image(image: AssetImage(image04))),
                      Align(
                        alignment: const Alignment(0.3, -2),
                        child: Container(
                          padding: const EdgeInsets.only(top: 22),
                          child: Column(
                            children: const [
                              Text(fresh,
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: grey,
                                      fontWeight: FontWeight.bold)),
                              Text(get,
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: green,
                                      fontWeight: FontWeight.w700))
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 385.w,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(ex,
                          style: TextStyle(
                              fontSize: 24,
                              color: black,
                              fontWeight: FontWeight.w600)),
                      Text(se, style: TextStyle(fontSize: 16, color: green)),
                    ],
                  ),
                ),
                SizedBox(
                  height: 200.51,
                  width: 550.22,
                  child: ListView.builder(
                    itemCount: listproducthome.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      ProductHome product = listproducthome[index];
                      return HomeProduct(
                        ProductsHome: product,
                      );
                    },
                  ),
                ),
                SizedBox(
                  width: 385.w,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(best,
                          style: TextStyle(
                              fontSize: 24,
                              color: black,
                              fontWeight: FontWeight.w600)),
                      Text(se, style: TextStyle(fontSize: 16, color: green)),
                    ],
                  ),
                ),
                SizedBox(
                  height: 200.51,
                  width: 550.22,
                  child: ListView.builder(
                    itemCount: listproductselling.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      ProductHome product = listproductselling[index];
                      return HomeProduct(
                        ProductsHome: product,
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 105.h,
                  width: 550.22,
                  child: ListView.builder(
                    itemCount: listgroceproduct.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      GroceProduct productgroce = listgroceproduct[index];
                      return GroceriesProduct(
                        groceproduct: productgroce,
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 200.51,
                  width: 550.22,
                  child: ListView.builder(
                    itemCount: listbeefbroiler.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      ProductHome product = listbeefbroiler[index];
                      return HomeProduct(
                        ProductsHome: product,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
