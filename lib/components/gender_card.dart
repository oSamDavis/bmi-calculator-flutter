import 'package:flutter/material.dart';
import '../constants.dart';

class GenderCard extends StatelessWidget {
  final IconData cardIcon;
  final String cardText;

  const GenderCard({@required this.cardIcon, @required this.cardText});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          cardIcon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          cardText,
          style: kCardTextStyle,
        ),
      ],
    );
  }
}
