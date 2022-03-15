import 'package:flutter/material.dart';
import 'package:groceries/constants/colors.dart';
import 'package:groceries/constants/images.dart';
import 'package:groceries/constants/text.dart';
import 'package:groceries/models/home_product.dart';
import 'package:groceries/ui/widgets/home_widget.dart';
import 'package:mc/mc.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: white,
        appBar: AppBar(
          shadowColor: Colors.transparent,
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.transparent,
          title: SizedBox(
            // color: grey03,
            width: 324.82.w,
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
                contentPadding: const EdgeInsets.symmetric(horizontal: 10.0),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: grey03),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          actions: const [
            Image(image: AssetImage(imgicon)),
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
              itemCount: listsearchproduct.length,
              itemBuilder: (BuildContext ctx, index) {
                // ignore: non_constant_identifier_names
                ProductHome ProductsHome = listsearchproduct[index];
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
