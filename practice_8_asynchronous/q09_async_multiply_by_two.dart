Future<List<int>> multiplyByTwoAsync(List<int> numbers) async {
  await Future.delayed(Duration(seconds: 1));
  return numbers.map((n) => n * 2).toList();
}

void main() async {
  List<int> numbers = [2, 5, 8, 11, 14];
  print("Original Numbers: $numbers");
  print("Multiplying each by 2 asynchronously...");
  List<int> modified = await multiplyByTwoAsync(numbers);
  print("Modified Numbers: $modified");
}
