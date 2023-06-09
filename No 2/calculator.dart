import 'dart:math';

class Calculator {
  late double num1, num2;

  // setter
  void set setNum1Value(double value) {
    this.num1 = value;
  }

  void set setNum2Value(double value) {
    this.num2 = value;
  }

  get getNum1 => num1;
  get getNum2 => num2;

  // tambah
  tambahFun(var a, var b) => a + b;
  // kurang
  kurangFun(var a, var b) => a - b;
  // kali
  kaliFun(var a, var b) => a * b;
  // bagi
  bagiFun(var a, var b) => a / b;
  // pangkat
  pangkatFun(var a, var b) => pow(a, b);
}

void main(List<String> args) {
  // create object
  Calculator calculator = Calculator();

  // set num1, num2 value
  calculator.setNum1Value = 4;
  calculator.setNum2Value = 2;

  // get num1, num2 value
  double a = calculator.getNum1;
  double b = calculator.getNum2;

  // output
  print('${a} + ${b} = ${calculator.tambahFun(a, b)}');
  print('${a} - ${b} = ${calculator.kurangFun(a, b)}');
  print('${a} / ${b} = ${calculator.bagiFun(a, b)}');
  print('${a} x ${b} = ${calculator.kaliFun(a, b)}');
  print('${a} pangkat ${b} = ${calculator.pangkatFun(a, b)}');
}
