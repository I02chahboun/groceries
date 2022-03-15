import 'package:flutter/material.dart';
import 'package:groceries/constants/colors.dart';
import 'package:groceries/constants/images.dart';
import 'package:groceries/constants/text.dart';
import 'package:groceries/constants/util.dart';
import 'package:mc/mc.dart';

import '../home_page.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _visibility = true;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  Color _color = grey01;
  String com = "@gmail.com";
  Widget _icon = const SizedBox();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: white20,
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.only(left: 22, top: 120),
            width: 414.w,
            height: 860.h,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  alignment: Alignment.topCenter,
                  image: AssetImage(background)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(log, style: TextStyle(fontSize: 26, color: grey)),
                SizedBox(
                  height: 80.h,
                  width: 364.12.w,
                  child: TextField(
                    onChanged: (text) {
                      if (text.isNotEmpty) {
                        _color = grey01;
                      }
                      if (text.contains(com)) {
                        _icon = const Icon(
                          Icons.check,
                          color: green,
                          size: 22,
                        );
                      }
                      setState(() {});
                    },
                    controller: _emailController,
                    decoration: InputDecoration(
                      suffixIcon:_icon,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: _color, width: 2.0),
                        borderRadius: BorderRadius.circular(19),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: _color, width: 2.0),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      label: Text(email,
                          style: TextStyle(fontSize: 16, color: _color)),
                      //   contentPadding: EdgeInsets.zero,
                    ),
                  ),
                ),
                SizedBox(
                  height: 80.h,
                  width: 364.12.w,
                  child: TextField(
                    onChanged: (text) {
                      if (text.isNotEmpty) {
                        _color = grey01;
                        setState(() {});
                      }
                    },
                    controller: _passwordController,
                    obscureText: _visibility,
                    //    controller: myController,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: _color, width: 2.0),
                        borderRadius: BorderRadius.circular(19),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: _color, width: 2.0),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {
                          _visibility = !_visibility;

                          setState(() {});
                        },
                        icon: _visibility
                            ? const Icon(
                                Icons.visibility_off,
                                color: grey01,
                                size: 22,
                              )
                            : const Icon(
                                Icons.visibility,
                                color: grey01,
                                size: 22,
                              ),
                      ),
                      label: Text(password,
                          style: TextStyle(fontSize: 16, color: _color)),
                      //   contentPadding: EdgeInsets.zero,
                    ),
                  ),
                ),
                SizedBox(
                  width: 364.w,
                  height: 67.h,
                  child: TextButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(green),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(19.0),
                            ),
                          )),
                      onPressed: () {
                        if (_emailController.text.isNotEmpty &&
                            _passwordController.text.isNotEmpty) {
                          context.push(HomePage());
                        } else {
                          _color = Colors.red;
                          setState(() {});
                        }
                      },
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Text(buttonlog,
                            style: TextStyle(
                              fontSize: 18,
                              color: white,
                            )),
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
