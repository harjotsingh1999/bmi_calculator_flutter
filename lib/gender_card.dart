import "package:flutter/material.dart";

import 'constants.dart';



class GenderCard extends StatelessWidget {
  final IconData genderIcon;
  final String genderText;

  GenderCard({@required this.genderIcon, @required this.genderText});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          genderIcon,
          size: kIconSize,
          color: Colors.white,
        ),
        SizedBox(
          height: 35,
        ),
        Text(genderText, style: kTextStyle),
      ],
    );
  }
}
