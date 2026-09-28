import 'dart:io';

Future<void> main() async {
  stdout.write("Enter first integer: ");
  int a = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

  stdout.write("Enter second integer: ");
  int b = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

  print("Waiting 3 seconds to compute...");
  await Future.delayed(Duration(seconds: 3));

  print("Sum after 3 seconds: ${a + b}");
}
