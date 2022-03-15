import 'package:flutter/material.dart';
import 'package:groceries/constants/colors.dart';
import 'package:groceries/constants/images.dart';
import 'package:groceries/constants/text.dart';

class ExploreProduct {
  final String img;
  final String name;
  final String type;
  final String price;
  final Color color;
  ExploreProduct(this.img, this.name, this.type, this.price,this.color);
}

List<ExploreProduct> listexploreproduct = [
  ExploreProduct(imageex01, nameex01, "f", "233",green),
  ExploreProduct(imageex02, nameex02, "c", "233",orange),
  ExploreProduct(imageex03, nameex03, "m", "233",meat),
  ExploreProduct(imageex04, nameex04, "a", "233",bakery),
  ExploreProduct(imageex05, nameex05, "d", "233",dairy),
  ExploreProduct(imageex06, nameex06, "b", "233",beve),
];
