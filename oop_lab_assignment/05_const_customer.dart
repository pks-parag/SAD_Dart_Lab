class Customer {
  final int customerId;
  final String customerName;

  const Customer(this.customerId, this.customerName);
}

void main() {
  const Customer primeCustomer = Customer(501, "Habibur Rahman");
  print("Customer ID: ${primeCustomer.customerId}");
  print("Customer Name: ${primeCustomer.customerName}");
}
