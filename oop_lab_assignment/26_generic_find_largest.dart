T findLargest<T extends num>(T firstNumber, T secondNumber) {
  return (firstNumber > secondNumber) ? firstNumber : secondNumber;
}

void main() {
  int largerInt = findLargest<int>(45, 92);
  double largerDouble = findLargest<double>(3.1415, 2.7182);

  print("Larger integer: $largerInt");
  print("Larger floating number: $largerDouble");
}
