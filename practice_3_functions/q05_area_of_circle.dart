import 'dart:math';

double circleArea(double radius) {
  return pi * radius * radius;
}

void main() {
  double r = 5.0;
  print("Area of circle with radius $r: ${circleArea(r)}");
}
