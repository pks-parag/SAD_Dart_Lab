num maxNumber(num a, num b, num c) {
  num max = a;
  if (b > max) max = b;
  if (c > max) max = c;
  return max;
}

void main() {
  print("Max of (12, 45, 28): ${maxNumber(12, 45, 28)}");
}
