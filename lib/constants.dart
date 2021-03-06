import 'package:flutter/material.dart';

//k is added before all variables as naming convention
const double kIconSize = 80;
const double kTextSize = 18;
const Color kTextColor=Color(0xff8d8e98);
const Color kButtonColor=Color(0xff4c4f5e);
const TextStyle kTextStyle = TextStyle(
  color: kTextColor,
  fontSize: kTextSize,
);

const TextStyle kBoldTextStyle = TextStyle(
  fontSize: 50,
  fontWeight: FontWeight.w900,
);

const kActiveCardColor = Color(0xff1d1e33);
const kInactiveCardColor = Color(0xFF111328);
const kBottomContainerColor = Color(0xFFEB1555);

const Map<String, Map> kResultMap = {
  "underweight":{
    "title": "UNDERWEIGHT",
    "titleColor": Colors.yellow,
    "messageText": "Your BMI result is quite low. You gotta eat more!",
  },
  "normal":{
    "title": "NORMAL",
    "titleColor": Colors.green,
    "messageText": "You have a normal body weight. Good job!",
  },
  "overweight":{
    "title": "OVERWEIGHT",
    "titleColor": Colors.orange,
    "messageText": "You weight is on the higher end. You need to exercise more.",
  },
  "obese":{
    "title": "OBESE",
    "titleColor": Colors.red,
    "messageText": "You need to do a lot of exercising!",
  },
};