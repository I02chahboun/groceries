// ignore: duplicate_ignore
// ignore: duplicate_ignore
// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore

// ignore: file_names
import 'package:groceries/constants/images.dart';
import 'package:groceries/constants/text.dart';

class ProductHome {
  final String img;
  final String name;
  final String price;
  final String type;
  ProductHome(this.img, this.name, this.price,this.type);
}

List<ProductHome> listproducthome = [
  ProductHome(banans, organic, "\$4.99",""),
  ProductHome(apple, organic, "\$4.99","r"),
  ProductHome(banans, organic, "\$4.99",""),
  ProductHome(apple, organic, "\$4.99",""),
];

List<ProductHome> listproductselling = [
  ProductHome(bell, belltxt, "\$4.99",""),
  ProductHome(ginger, gingertxt, "\$4.99",""),
  ProductHome(bell, belltxt, "\$4.99",""),
  ProductHome(ginger, gingertxt, "\$4.99",""),
];

class GroceProduct {
  final String img;
  final String name;

  GroceProduct(this.img, this.name);
}

List<GroceProduct> listgroceproduct = [
  GroceProduct(pulses, pulsestxt),
  GroceProduct(rice, ricetxt),
];

List<ProductHome> listbeefbroiler = [
  ProductHome(beef, beeftxt, "\$4.99",""),
  ProductHome(broiler, broilertxt, "\$4.99",""),
  ProductHome(beef, beeftxt, "\$4.99",""),
  ProductHome(broiler, broilertxt, "\$4.99",""),
];

List<ProductHome> listbeveragesproduct = [
  ProductHome(imgbev01, namebev01, "\$1.99",""),
  ProductHome(imgbev02, namebev02, "\$1.50",""),
  ProductHome(imgbev03, namebev03, "\$15.99",""),
  ProductHome(imgbev04, namebev04, "\$15.99",""),
  ProductHome(imgbev05, namebev05, "\$4.99",""),
  ProductHome(imgbev06, namebev06, "\$4.99",""),
];

List<ProductHome> listsearchproduct = [
  ProductHome(imgsearch01, namesearch01, "\$1.99",""),
  ProductHome(imgsearch02, namesearch02, "\$1.50",""),
  ProductHome(imgsearch03, namesearch03, "\$15.99",""),
  ProductHome(imgsearch04, namesearch04, "\$15.99",""),
  ProductHome(imgsearch05, namesearch05, "\$4.99",""),
  ProductHome(imgsearch06, namesearch06, "\$4.99",""),
];
