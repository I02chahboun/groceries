import 'package:flutter/material.dart';
import 'package:groceries/constants/colors.dart';
import 'package:groceries/constants/text.dart';
import 'package:groceries/constants/util.dart';
import 'package:groceries/ui/widgets/check_widget.dart';
import 'package:mc/mc.dart';

class Filters extends StatelessWidget {
  const Filters({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          foregroundColor: Colors.transparent,
          centerTitle: true,
          title: const Text(f,
              style: TextStyle(
                  fontSize: 20, color: black, fontWeight: FontWeight.w700)),
          leading: IconButton(
            onPressed: () {
              context.pop();
            },
            icon: const Icon(
              Icons.clear,
              size: 25,
              color: black,
            ),
          ),
        ),
        body: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            height: 770.h,
            width: 414.w,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)),
              color: grey03,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 510.h,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        c,
                        style: TextStyle(
                            fontSize: 24,
                            color: black,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Check(),
                      Check(),
                      Check(),
                      Check(),
                      Text(
                        b,
                        style: TextStyle(
                            fontSize: 24,
                            color: black,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Check(),
                      Check(),
                      Check(),
                      Check(),
                    ],
                  ),
                ),
                SizedBox(
                  height: 67.h,
                  width: 364.w,
                  child: TextButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(green),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(19),
                          ))),
                      onPressed: () {
                        //  context.push(BagePage());
                      },
                      child: const Text(apfbutton,
                          style: TextStyle(
                              fontSize: 18,
                              color: white,
                              fontWeight: FontWeight.bold))),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
