import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/bottom_button.dart';
import 'package:bmi_calculator/calculator_brain.dart';
class ResultsPage extends StatelessWidget {

  final CalculatorBrain calculatorBrain;

  ResultsPage({@required this.calculatorBrain});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: Text('Your Result', style: kTitleTextStyle,)),
          ),
          Expanded(
              flex: 5,
              child: ReusableCard(
                cardColor: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      calculatorBrain.getResult().toUpperCase(),
                      style: kResultsTextStyle,
                      textAlign: TextAlign.center,),
                    Text(
                      calculatorBrain.calculateBMI(),
                      style: kBMITextStyle,
                      textAlign: TextAlign.center,),
                    Text(
                      calculatorBrain.getInterpretation(),
                      style: kBodyTextStyle,
                      textAlign: TextAlign.center,),
                  ],

                ),
              ),
          ),
          BottomButton(
              text: 'RE-CALCULATE',
              onTap: (){Navigator.pop(context);}),
        ],
      ),
    );
  }
}
