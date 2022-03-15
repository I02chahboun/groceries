import 'package:flutter/material.dart';
import 'package:groceries/constants/colors.dart';
import 'package:groceries/constants/images.dart';
import 'package:groceries/constants/text.dart';
import 'package:groceries/constants/util.dart';
import 'package:mc/mc.dart';

import 'number.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);
  
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: white,
        body: Container(
          width: 414.w,
          height: 896.h,
          decoration: const BoxDecoration(
            image: DecorationImage(
                alignment: Alignment.topCenter,
                image: AssetImage(backgroundsign)),
          ),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
              height: 510.h,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(titlesign,
                      style: TextStyle(
                          fontSize: 26,
                          color: grey,
                          fontWeight: FontWeight.w700)),
                  SizedBox(
                    height: 60.h,
                    width: 364.w,
                    child: const TextField(
                   
                      decoration: InputDecoration(
                        //   contentPadding: EdgeInsets.zero,
                        prefixIcon: Image(
                          image: AssetImage(prefix),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  const Center(
                      child: Text(
                    subsign,
                    style: TextStyle(fontSize: 14, color: grey01),
                  )),
                  //   SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.86,
                    height: MediaQuery.of(context).size.height * 0.082,
                    child: TextButton(
                      
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(hex),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(19.0),
                              ),
                            )),
                        onPressed: () {
                         
                            context.push(const Number());
                         
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            children: const [
                              Image(image: AssetImage(icongoogle)),
                              SizedBox(
                                width: 20,
                              ),
                              Text(titlebg,
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: white,
                                  )),
                            ],
                          ),
                        )),
                  ),

                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.86,
                    height: MediaQuery.of(context).size.height * 0.082,
                    child: TextButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(hex),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(19.0),
                              ),
                            )),
                        onPressed: () {
                          context.push(const Number());
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            children: const [
                              Image(image: AssetImage(iconfacebook)),
                              SizedBox(
                                width: 20,
                              ),
                              Text(titlebf,
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: white,
                                  )),
                            ],
                          ),
                        )),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
