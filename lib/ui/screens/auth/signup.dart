import 'package:flutter/material.dart';
import 'package:groceries/constants/colors.dart';
import 'package:groceries/constants/images.dart';
import 'package:groceries/constants/text.dart';
import 'package:groceries/constants/util.dart';
import 'package:mc/mc.dart';
import 'loging.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _visibility = true;
  final TextEditingController _nameController = TextEditingController();
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
            height: 860.h,
            padding: const EdgeInsets.only(left: 25, top: 120),
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  alignment: Alignment.topCenter,
                  image: AssetImage(background)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(sign, style: TextStyle(fontSize: 26, color: grey)),
                SizedBox(
                  height: 80.h,
                  width: 364.w,
                  child: TextField(
                    onChanged: (text) {
                      if (text.isNotEmpty) {
                        _color = grey01;
                        setState(() {});
                      }
                    },
                    controller: _nameController,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: _color, width: 2.0),
                        borderRadius: BorderRadius.circular(19),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: _color, width: 2.0),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      label: const Text(user,
                          style: TextStyle(fontSize: 16, color: grey01)),
                      //   contentPadding: EdgeInsets.zero,
                    ),
                  ),
                ),
                SizedBox(
                  height: 80.h,
                  width: 364.w,
                  child: TextField(
                    onChanged: (text) {
                      if (text.isNotEmpty) {
                        _color = grey01;
                       
                      }  if (text.contains(com)) {
                        _icon = const Icon(Icons.check,color: green,
                        size: 22,);
                       
                      }
                        setState(() {});
                    },
                    controller: _emailController,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: _color, width: 2.0),
                        borderRadius: BorderRadius.circular(19),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: _color, width: 2.0),
                        borderRadius: BorderRadius.circular(10),
                      ),

                      suffixIcon: _icon,
                      label: const Text(email,
                          style: TextStyle(fontSize: 16, color: grey01)),
                      //   contentPadding: EdgeInsets.zero,
                    ),
                  ),
                ),
                SizedBox(
                  height: 80.h,
                  width: 364.w,
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
                      //errorBorder: Colors.red,
                      suffixIcon: IconButton(
                        onPressed: () {
                          _visibility = !_visibility;
                          setState(() {});
                        },
                        icon: _visibility
                            ? const Icon(
                                Icons.visibility_off,
                                color: grey01,
                                size: 20,
                              )
                            : const Icon(
                                Icons.visibility,
                                color: grey01,
                                size: 20,
                              ),
                      ),
                      label: const Text(password,
                          style: TextStyle(fontSize: 16, color: grey01)),
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
                        if (_nameController.text.isNotEmpty &&
                            _emailController.text.isNotEmpty &&
                            _passwordController.text.isNotEmpty) {
                          context.push(const Login());
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
