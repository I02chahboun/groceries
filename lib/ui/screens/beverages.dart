import 'package:flutter/material.dart';
import 'package:groceries/constants/colors.dart';
import 'package:groceries/constants/text.dart';
import 'package:groceries/constants/util.dart';
import 'package:groceries/models/home_product.dart';
import 'package:groceries/ui/screens/explore.dart';
import 'package:groceries/ui/screens/filters.dart';
import 'package:groceries/ui/widgets/home_widget.dart';
import 'package:mc/mc.dart';

class Beverages extends StatelessWidget {
  const Beverages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: white,
        appBar: AppBar(
          shadowColor: Colors.transparent,
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.transparent,
          title: const Text(bev,
              style: TextStyle(
                  fontSize: 20, color: black, fontWeight: FontWeight.w700)),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              context.pushR(const Explore());
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 22,
              color: black,
            ),
          ),
          actions: [
            IconButton(
              onPressed: (){
                context.push(const Filters());
              },
              icon: const Icon(
                Icons.settings,
                color: black,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.only(right: 15),
            //  color: orange,
            height: 970.h,
            width: 414.w,
            // padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: listbeveragesproduct.length,
              itemBuilder: (BuildContext ctx, index) {
                // ignore: non_constant_identifier_names
                ProductHome ProductsHome = listbeveragesproduct[index];
                return HomeProduct(
                  ProductsHome: ProductsHome,
                );
              },
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 2,
                crossAxisCount: 2,
                childAspectRatio: 0.8,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
