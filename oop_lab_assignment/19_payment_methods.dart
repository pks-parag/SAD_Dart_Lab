abstract class Payment {
  void executePayment(double paidAmount);
}

class CashPayment implements Payment {
  @override
  void executePayment(double paidAmount) {
    print("Paid \$${paidAmount.toStringAsFixed(2)} directly in physical cash.");
  }
}

class CardPayment implements Payment {
  String maskedCardNumber;

  CardPayment(this.maskedCardNumber);

  @override
  void executePayment(double paidAmount) {
    print("Charged \$${paidAmount.toStringAsFixed(2)} to card ending with $maskedCardNumber.");
  }
}

void main() {
  Payment cashBill = CashPayment();
  Payment posBill = CardPayment("4321");

  cashBill.executePayment(35.50);
  posBill.executePayment(120.00);
}
