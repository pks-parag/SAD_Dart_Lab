class BankAccount {
  double _currentBalance = 0.0;

  set balanceAmount(double newAmount) {
    if (newAmount >= 0) {
      _currentBalance = newAmount;
    } else {
      print("Warning: Balance cannot be negative!");
    }
  }

  double get balanceAmount => _currentBalance;
}

void main() {
  BankAccount account = BankAccount();
  account.balanceAmount = 12000.0;
  print("Current Balance: \$${account.balanceAmount}");

  account.balanceAmount = -500.0; // Rejected by setter
  print("Balance after negative attempt: \$${account.balanceAmount}");
}
