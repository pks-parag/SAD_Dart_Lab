String toCapitalized(String textInput) {
  if (textInput.isEmpty) return textInput;
  return textInput[0].toUpperCase() + textInput.substring(1);
}

void main() {
  String inputWord = "flutter";
  String formattedWord = toCapitalized(inputWord);

  print("Original: $inputWord");
  print("Capitalized: $formattedWord");
}
