import 'package:flutter/material.dart';
import 'package:groceries/constants/colors.dart';
import 'package:groceries/constants/text.dart';

import 'package:groceries/models/explore_product.dart';
import 'package:groceries/ui/widgets/explore_widget.dart';
import 'package:mc/mc.dart';

class Explore extends StatelessWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: white,
        appBar: AppBar(
          shadowColor: Colors.transparent,
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.transparent,
          title: const Text(
            extitle,
            style: TextStyle(
                fontSize: 20, color: black, fontWeight: FontWeight.w600),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                SizedBox(
                  height: 10.h,
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
                SizedBox(
                  height: 15.h,
                ),
                SizedBox(
                  //  color: orange,
                  height: 900.h,
                  width: 414.w,
                  // padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: listexploreproduct.length,
                    itemBuilder: (BuildContext ctx, index) {
                      ExploreProduct exploreproduct = listexploreproduct[index];
                      return ProductExplore(
                        explore: exploreproduct,
                      );
                    },
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 2,
                      crossAxisCount: 2,
                      childAspectRatio: 0.8,
                    ),
                  ),
                ),
                //ProductExplore(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
