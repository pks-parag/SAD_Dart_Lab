Future<num> sumAsync(num a, num b) async {
  await Future.delayed(Duration(milliseconds: 500));
  return a + b;
}

void main() async {
  print("Calculating sum asynchronously...");
  num result = await sumAsync(10, 20);
  print("Sum is: $result");
}
