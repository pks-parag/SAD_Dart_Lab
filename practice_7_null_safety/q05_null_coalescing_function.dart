int checkValue(int? number) {
  return number ?? 0;
}

void main() {
  print("When null passed: ${checkValue(null)}");
  print("When 25 passed: ${checkValue(25)}");
}
