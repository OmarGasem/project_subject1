import 'package:flutter/material.dart';

const kBottomContainerHeight = 60.0;
const kActiveColorCard = Color(0xffe3e7ea);
const kInactiveColorCard = Color(0xff111328);
const kBottomContainerColor = Colors.white;
const kBTNPink = Color.fromARGB(255, 241, 39, 100);
const kBTNGreen = Color.fromARGB(255, 73, 179, 105);
const kAppBarGreen = Color.fromARGB(255, 76, 141, 95);
Color kPressedColorBotton = Colors.red;
Color knonPressedColorBotton = Colors.black;
const kBottomTextStyle =
    TextStyle(fontSize: 20, color: Colors.grey, fontWeight: FontWeight.bold);

const kDecorationTextField = InputDecoration(
  // To delete borders
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide.none,
  ),
  //عند الضغط يتم تغيير لون الحدود
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.grey,
    ),
  ),
  // fillColor: Colors.red,
  filled: true,
  //حجم الداخلي للحقل
  contentPadding: const EdgeInsets.all(8),
);
