class MathHelper {
  static double addNumbers(double firstNumber, double secondNumber) {
    return firstNumber + secondNumber;
  }

  static double multiplyNumbers(double firstNumber, double secondNumber) {
    return firstNumber * secondNumber;
  }
}

void main() {
  double sumResult = MathHelper.addNumbers(14.5, 25.5);
  double productResult = MathHelper.multiplyNumbers(6.0, 7.0);

  print("Sum: $sumResult");
  print("Product: $productResult");
}
