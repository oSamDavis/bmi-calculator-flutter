
import 'package:flutter/cupertino.dart';
import 'dart:math';

class CalculatorBrain
{
  final int height;
  final int weight;

  double _bmi;

  CalculatorBrain({@required this.height, @required this.weight});

  String calculateBMI(){
    _bmi = weight/pow(height/100,2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult()
  {
    this.calculateBMI();
    if(_bmi >= 25)
      {
        return 'Overweight';
      }
    else if( _bmi > 18.5)
      {
        return 'Normal';
      }
    else
      {
        return 'Underweight';
      }
  }

  String getInterpretation()
  {
    if(_bmi >= 25)
    {
      return 'Your BMI indicates you are Overweight. More Exercise Perhaps?';
    }
    else if( _bmi > 18.5)
    {
      return 'Your BMI is Normal. Good Job!';
    }
    else
    {
      return 'Your BMI indicates you are Underweight. You can eat a bit more.';
    }

  }
}