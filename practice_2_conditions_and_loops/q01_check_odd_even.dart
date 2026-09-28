import 'dart:io';

void main() {
  stdout.write("Enter a number: ");
  int? number = int.tryParse(stdin.readLineSync() ?? '');
  
  if (number != null) {
    if (number % 2 == 0) {
      print("$number is Even");
    } else {
      print("$number is Odd");
    }
  } else {
    print("Invalid input!");
  }
}
