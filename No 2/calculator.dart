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

  // tambah
  tambahFun(var a, var b) => a + b;
  // kurang
  kurangFun(var a, var b) => a - b;
  // kali
  kaliFun(var a, var b) => a * b;
  // bagi
  baguFun(var a, var b) => a / b;
  // pangkat
  pangkatFun(var a, var b) => pow(a, b);
}

void main(List<String> args) {
  Calculator calculator = Calculator();
  calculator.setNum1Value = 4;
  calculator.setNum2Value = 2;

  // perkalian
  print(calculator.kaliFun(calculator.num1, calculator.num2));
  // pembagian
  print(calculator.baguFun(calculator.num1, calculator.num2));
  // pertambahan
  print(calculator.tambahFun(calculator.num1, calculator.num2));
  // perpangkatan
  print(calculator.pangkatFun(calculator.num1, calculator.num2));
}
