import 'package:flutter/material.dart';
import 'package:groceries/constants/colors.dart';
import 'package:groceries/constants/images.dart';
import 'package:groceries/constants/text.dart';
import 'package:groceries/constants/util.dart';
import 'package:mc/mc.dart';

import 'welcome.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: green,
        body: InkWell(
          onTap: () {
            context.push(const Welcome());
          },
          child: SizedBox(
            height: 896.h,
            width: 414.w,
            child: Center(
              child: SizedBox(
                width: 230.w,
                child: Row(
                  children: [
                    SizedBox(
                        width: 54.7.w,
                        height: 63.61.h,
                        child: const Image(
                          image: AssetImage(logo),
                        )),
                    const Text(
                      title,
                      style: TextStyle(
                          fontSize: 50,
                          color: white,
                          fontWeight: FontWeight.bold),
                    ),
                  ],

                  //subtitle: Text(subtitle,style: TextStyle(fontSize:16,color:white),),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
