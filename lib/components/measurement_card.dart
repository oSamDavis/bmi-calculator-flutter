import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';
import 'round_icon_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MeasurementCard extends StatelessWidget {
  MeasurementCard(
      {@required this.cardName,
        @required this.measurement,
        @required this.decrement,
        @required this.increment});

  final String cardName;
  final int measurement;
  final Function decrement;
  final Function increment;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          cardName,
          style: kCardTextStyle,
        ),
        Text(
          measurement.toString(),
          style: kNumberTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RoundIconButton(icon: FontAwesomeIcons.minus, onPressed: decrement),
            SizedBox(
              width: 10.0,
            ),
            RoundIconButton(
              icon: FontAwesomeIcons.plus,
              onPressed: increment,
            ),
          ],
        )
      ],
    );
  }
}


