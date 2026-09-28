import 'dart:math';

int? generateRandom() {
  Random rand = Random();
  // 50% chance of returning 100, 50% chance of returning null
  return rand.nextBool() ? 100 : null;
}

void main() {
  int status = generateRandom() ?? 0;
  print("Status value: $status");
}
