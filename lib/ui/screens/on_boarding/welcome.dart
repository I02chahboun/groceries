import 'package:flutter/material.dart';
import 'package:groceries/constants/colors.dart';
import 'package:groceries/constants/images.dart';
import 'package:groceries/constants/text.dart';
import 'package:groceries/constants/util.dart';
import 'package:groceries/ui/screens/auth/sing_in.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            color: green,
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage(backgroundImage)),
          ),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 20),
              height: MediaQuery.of(context).size.height * 0.55,
              //   color: Colors.yellow,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Image(image: AssetImage(logo)),
                  const Text(
                    welcome,
                    style: TextStyle(fontSize: 48, color: white),
                    textAlign: TextAlign.center,
                  ),
                  const Text(
                    fast,
                    style: TextStyle(fontSize: 16, color: white20),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.86,
                    height: MediaQuery.of(context).size.height * 0.08,
                    child: TextButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(green),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(19.0),
                              ),
                            )),
                        onPressed: () {
                          context.push(const SignIn());
                        },
                        child: const Text(txtbutton,
                            style: TextStyle(
                              color: white,
                            ))),
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
