double calculateArea({double length = 1.0, double width = 1.0}) {
  return length * width;
}

void main() {
  print("Default Area: ${calculateArea()}");
  print("Area with length=5, width=4: ${calculateArea(length: 5, width: 4)}");
}
