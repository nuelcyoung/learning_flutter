import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyColors {
  static int kHeader = 0xFFFFFFFF;
  static int kSecondaryColor = 0xFFFFFFFF;
  static int kBackground = 0xff03174c;
  static int kPrimaryColor = 0xff03174c;
}

TextStyle kTitleStyle = TextStyle(
  color: Color(MyColors.kHeader),
  fontWeight: FontWeight.bold,
  fontFamily: 'Montserrat',
  fontSize: 20,
);
TextStyle kHeaderStyle = TextStyle(
  color: Color(MyColors.kHeader),
  fontWeight: FontWeight.bold,
  fontFamily: 'roboto',
  fontSize: 32,
);
