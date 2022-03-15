import 'package:flutter/material.dart';
import 'package:groceries/constants/colors.dart';
import 'package:groceries/constants/images.dart';
import 'package:groceries/constants/text.dart';
import 'package:groceries/constants/util.dart';
import 'package:groceries/ui/screens/auth/verification.dart';
import 'package:mc/mc.dart';

class Number extends StatefulWidget {
  const Number({Key? key}) : super(key: key);

  @override
  _NumberState createState() => _NumberState();
}

class _NumberState extends State<Number> {
  TextEditingController numberController = TextEditingController();
  Color _color = grey01;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: white20,
        body: Container(
          width: 414.w,
          height: 320.h,
          padding: const EdgeInsets.only(
            left: 20,
          ),
          decoration: const BoxDecoration(
            //color: Colors.red,
            image: DecorationImage(
                alignment: Alignment.topCenter, image: AssetImage(background)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Icon(Icons.arrow_back_ios),
              SizedBox(
                height: 10.h,
              ),
              const Text(
                enter,
                style: TextStyle(
                    fontSize: 26, color: grey, fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 80.h,
                width: 364.w,
                child: TextField(
                  onChanged: (text) {
                    if (text.isNotEmpty) {
                      _color = grey01;
                      setState(() {
                        
                      });
                    }
                  },
                  keyboardType: TextInputType.number,
                  controller: numberController,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: _color, width: 2.0),
                      borderRadius: BorderRadius.circular(19),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: _color, width: 2.0),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    label: const Text(label,
                        style: TextStyle(fontSize: 16, color: grey01)),
                    //   contentPadding: EdgeInsets.zero,
                    prefixIcon: const Image(
                      image: AssetImage(prefix),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: green,
          onPressed: () {
            if (numberController.text.isNotEmpty) {
              context.push(const VerifiCation());
            } else {
              _color = Colors.red;
            }
            setState(() {});
          },
          child: const Icon(
            Icons.arrow_forward_ios,
            size: 20,
            color: white,
          ),
        ),
      ),
    );
  }
}
