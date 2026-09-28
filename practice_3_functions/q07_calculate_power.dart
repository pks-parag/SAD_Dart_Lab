import 'dart:math';

num calculatePower(num base, num exp) {
  return pow(base, exp);
}

void main() {
  print("5^3 = ${calculatePower(5, 3)}");
}
