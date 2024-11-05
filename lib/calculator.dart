import 'dart:math';

class Calculator {
  final int height;
  final int weight;
  double _bmi = 0.0;

  Calculator(this.height, this.weight);

  void calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
  }

  String getBmi() {
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi > 25) {
      return 'Overweight';
    } else if (_bmi > 18) {
      return 'You are normal.';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi > 25) {
      return 'You are fat, go to the gym.';
    } else if (_bmi > 18) {
      return 'Just continue what you are doing.';
    } else {
      return 'Go hit the gym and eat well';
    }
  }
}
