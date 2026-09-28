import 'dart:io';

void main() {
  List<double> expenses = [];
  stdout.write("How many expenses do you want to enter? ");
  int count = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

  for (int i = 1; i <= count; i++) {
    stdout.write("Enter expense #$i: ");
    double amount = double.tryParse(stdin.readLineSync() ?? '') ?? 0;
    expenses.add(amount);
  }

  double total = expenses.fold(0, (sum, item) => sum + item);
  print("Total Expenses: \$${total.toStringAsFixed(2)}");
}
