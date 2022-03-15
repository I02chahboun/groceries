import 'package:flutter/material.dart';
import 'package:groceries/constants/colors.dart';
import 'package:groceries/constants/images.dart';
import 'package:groceries/constants/text.dart';
import 'package:groceries/constants/util.dart';
import 'package:groceries/ui/screens/auth/signup.dart';
import 'package:mc/mc.dart';

class Location extends StatelessWidget {
  const Location({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: const Icon(
            Icons.arrow_back_ios,
            color: grey,
          ),
          shadowColor: Colors.transparent,
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.transparent,
        ),
        body: SingleChildScrollView(
          child: Container(
            height: 800.h,
            width: 413.83.w,
            padding: const EdgeInsets.only(top: 150),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  alignment: Alignment.topCenter, image: AssetImage(jbsgoogle)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(location,
                    style: TextStyle(
                        fontSize: 26, color: grey, fontWeight: FontWeight.w600)),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.25,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.08,
                        width: MediaQuery.of(context).size.width * 0.85,
                        child: const TextField(
                          // controller: myController,
                          decoration: InputDecoration(
                            suffixIcon: Icon(Icons.keyboard_arrow_down, size: 20),
                            label: Text(zone,
                                style: TextStyle(fontSize: 16, color: grey01)),
                            //   contentPadding: EdgeInsets.zero,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 80.h,
                        width: 364.w,
                        child: const TextField(
                          // controller: myController,
                          decoration: InputDecoration(
                            suffixIcon: Icon(Icons.keyboard_arrow_down, size: 20),
                            label: Text(zone,
                                style: TextStyle(fontSize: 16, color: grey01)),
                            //   contentPadding: EdgeInsets.zero,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 80.h,
                        width: 364.w,
                  child: TextButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(green),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(19.0),
                          ),
                        )),
                    onPressed: () {
                      context.push(const SignUp());
                    },
                    child: const Text(submit,
                        style: TextStyle(
                          fontSize: 18,
                          color: white,
                          fontWeight: FontWeight.w600,
                        )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
