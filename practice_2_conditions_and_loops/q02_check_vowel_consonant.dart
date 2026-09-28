import 'dart:io';

void main() {
  stdout.write("Enter a character: ");
  String input = stdin.readLineSync()?.toLowerCase() ?? '';
  
  if (input.isNotEmpty && input.length == 1 && RegExp(r'[a-z]').hasMatch(input)) {
    if ('aeiou'.contains(input)) {
      print("$input is a Vowel");
    } else {
      print("$input is a Consonant");
    }
  } else {
    print("Please enter a single valid alphabet letter.");
  }
}
