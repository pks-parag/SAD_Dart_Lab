import 'dart:io';

void main() {
  stdout.write("Enter a number: ");
  double? num = double.tryParse(stdin.readLineSync() ?? '');
  
  if (num != null) {
    if (num > 0) {
      print("$num is Positive");
    } else if (num < 0) {
      print("$num is Negative");
    } else {
      print("The number is Zero");
    }
  } else {
    print("Invalid input!");
  }
}
