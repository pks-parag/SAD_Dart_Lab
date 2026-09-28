class BankAccount {
  String accountHolder;
  double accountBalance;

  BankAccount(this.accountHolder, this.accountBalance);

  void depositMoney(double amount) {
    if (amount > 0) {
      accountBalance += amount;
      print("Deposited \$${amount.toStringAsFixed(2)}. New Balance: \$${accountBalance.toStringAsFixed(2)}");
    } else {
      print("Deposit amount must be greater than zero.");
    }
  }

  void withdrawMoney(double amount) {
    if (amount <= 0) {
      print("Invalid withdrawal amount.");
    } else if (amount > accountBalance) {
      print("Insufficient balance! Current Balance: \$${accountBalance.toStringAsFixed(2)}");
    } else {
      accountBalance -= amount;
      print("Withdrew \$${amount.toStringAsFixed(2)}. Remaining Balance: \$${accountBalance.toStringAsFixed(2)}");
    }
  }
}

void main() {
  BankAccount savingsAccount = BankAccount("Shornob", 5000.0);
  savingsAccount.depositMoney(1500.0);
  savingsAccount.withdrawMoney(2000.0);
  savingsAccount.withdrawMoney(6000.0);
}
