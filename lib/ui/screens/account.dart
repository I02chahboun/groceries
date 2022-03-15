// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:groceries/constants/colors.dart';
import 'package:groceries/constants/util.dart';
import 'package:groceries/constants/text.dart';
import 'package:groceries/ui/widgets/person_widget.dart';
import 'package:mc/mc.dart';

import 'auth/loging.dart';

class Account extends StatelessWidget {
  const Account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: SizedBox(
            height: 896.h,
            width: 414.w,
            child: Column(
              children: [
                Container(
                  height: 120.h,
                  decoration: BoxDecoration(
                    border: Border?.merge(
                        const Border(
                            bottom: BorderSide(width: 1.5, color: border)),
                        const Border(top: BorderSide.none)),
                  ),
                  child: ListTile(
                    leading: Container(
                      height: 64.32.h,
                      width: 58.44.w,
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    title: Row(
                      children: const [
                        Text(nameaccount,
                            style: TextStyle(
                                fontSize: 20,
                                color: black,
                                fontWeight: FontWeight.bold)),
                        Icon(Icons.settings),
                      ],
                    ),
                    subtitle: const Text(
                      emailaccount,
                      style: TextStyle(fontSize: 16, color: grey04),
                    ),
                  ),
                ),
                const PersonalInformation(
                    o, Icons.store_mall_directory_outlined),
                const PersonalInformation(m, Icons.card_travel_rounded),
                const PersonalInformation(d, Icons.location_city),
                const PersonalInformation(p, Icons.payment),
                const PersonalInformation(r, Icons.panorama_horizontal_select),
                const PersonalInformation(e, Icons.notifications),
                const PersonalInformation(h, Icons.help),
                const PersonalInformation(b, Icons.album_outlined),
                SizedBox(
                  height: 40.h,
                ),
                SizedBox(
                  width: 364.w,
                  height: 67.h,
                  child: TextButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(grey03),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(19.0),
                            ),
                          )),
                      onPressed: () {
                        context.push(const Login());
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        width: 364.w,
                        height: 67.h,
                        child: Row(
                          //mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Icon(
                                  Icons.logout,
                                  color: green,
                                  size: 24,
                                )),
                            SizedBox(
                              width: 85,
                            ),
                            Text(out,
                                style: TextStyle(
                                    fontSize: 18,
                                    color: green,
                                    fontWeight: FontWeight.w500)),
                          ],
                        ),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
