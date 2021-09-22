import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});
  final height;
  final weight;
  late double _bmiResult;
  String calculateBMI() {
    _bmiResult = weight / pow(height / 100, 2);
    return _bmiResult.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmiResult >= 25) {
      return 'Overweight';
    } else if (_bmiResult > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmiResult >= 25) {
      return 'You have a higher than the normal body weight. Try to exercise more';
    } else if (_bmiResult > 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than the normal body weight';
    }
  }
}
