import 'dart:io';

void main() {
  stdout.write("Enter a number: ");
  double? num = double.tryParse(stdin.readLineSync() ?? '');
  
  if (num != null) {
    print("Square of $num is: ${num * num}");
  } else {
    print("Invalid input!");
  }
}
