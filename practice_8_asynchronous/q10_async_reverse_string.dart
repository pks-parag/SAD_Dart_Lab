Future<String> reverseStringAsync(String input) async {
  await Future.delayed(Duration(seconds: 1));
  return input.split('').reversed.join('');
}

void main() async {
  String text = "Dart Asynchronous";
  print("Original String: $text");
  print("Reversing asynchronously...");
  String reversed = await reverseStringAsync(text);
  print("Reversed String: $reversed");
}
