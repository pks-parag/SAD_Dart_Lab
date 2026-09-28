String reverseString(String text) {
  return text.split('').reversed.join('');
}

void main() {
  String str = "DartProgramming";
  print("Original: $str");
  print("Reversed: ${reverseString(str)}");
}
