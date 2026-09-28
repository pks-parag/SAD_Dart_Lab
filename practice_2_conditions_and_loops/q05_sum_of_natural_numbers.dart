import 'dart:io';

void main() {
  stdout.write("Enter value of n: ");
  int n = int.tryParse(stdin.readLineSync() ?? '') ?? 10;
  
  int sum = 0;
  for (int i = 1; i <= n; i++) {
    sum += i;
  }
  print("Sum of first $n natural numbers is: $sum");
}
