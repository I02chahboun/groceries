import 'package:flutter/material.dart';
import 'package:groceries/constants/colors.dart';
import 'package:groceries/constants/util.dart';
import 'package:groceries/models/explore_product.dart';
import 'package:groceries/ui/screens/beverages.dart';

class ProductExplore extends StatelessWidget {
  const ProductExplore({Key? key, required this.explore}) : super(key: key);
  final ExploreProduct explore;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: InkWell(
        onTap: () {
          if (explore.type == "b") {
            context.push(const Beverages());
          }
        },
        child: Container(
          height: 189.11,
          width: 174.5,
          decoration: BoxDecoration(
            color: explore.color.withOpacity(0.09),
            borderRadius: BorderRadius.circular(18),
            border: Border.all(color: explore.color),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image(image: AssetImage(explore.img)),
              Text(explore.name,
                  style: const TextStyle(
                      fontSize: 16, color: black, fontWeight: FontWeight.w600)),
            ],
          ),
        ),
      ),
    );
  }
}