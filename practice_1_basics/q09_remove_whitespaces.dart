void main() {
  String text = "  Hello   Dart   World!  ";
  String result = text.replaceAll(' ', '');
  
  print("Original: '$text'");
  print("Without Whitespaces: '$result'");
}
