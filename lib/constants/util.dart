import 'package:flutter/material.dart';

extension Sz on BuildContext {
  double get h => MediaQuery.of(this).size.height;
  double get w => MediaQuery.of(this).size.width;
  Color get p => Theme.of(this).primaryColor;
  Color get a => Theme.of(this).colorScheme.secondary;
  Color get d => Theme.of(this).cardColor;
  Color get g => Theme.of(this).hoverColor;
  Color get b => Theme.of(this).canvasColor;
  Color get grn => Theme.of(this).selectedRowColor;
  Color get orn => Theme.of(this).splashColor;
  Color get rr => Theme.of(this).errorColor;
  ScaffoldMessengerState get snc => ScaffoldMessenger.of(this);
  double get h0 => m / 21.19; //28
  double get h1 => m / 25.19; //28
  double get h2 => m / 33.58; //24
  double get h3 => m / 40.30; //18
  double get h4 => m / 54.30; //15
  double get h5 => m / 67.17; //12
  double get h6 => m / 80.17; //9
  double get hg => m / 11.17;
  double get wd => m / 11.13;
  double get m =>
      (MediaQuery.of(this).size.height + MediaQuery.of(this).size.width) / 2;

  void push(Widget child) {
    Navigator.push(this, animRoute(child));
  }

  void pop() {
    Navigator.pop(this);
  }

  void pushR(Widget child) {
    Navigator.pushAndRemoveUntil(
        this, animRoute(child), (Route<dynamic> route) => false);
  }
}

void showMsg(String msg, BuildContext context) {
  context.snc.showSnackBar(SnackBar(
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0))),
    backgroundColor: context.p,
    content:
        SizedBox(height: context.h * 0.04, child: Center(child: Text(msg))),
    duration: const Duration(seconds: 3),
  ));
}

Route animRoute(Widget child) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = const Offset(1.0, 0.0);
      var end = Offset.zero;
      var curve = Curves.ease;
      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}