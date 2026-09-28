enum OrderStatus {
  pending,
  shipped,
  delivered,
}

void notifyOrderStatus(OrderStatus currentStatus) {
  switch (currentStatus) {
    case OrderStatus.pending:
      print("Your package is being prepared in the warehouse.");
      break;
    case OrderStatus.shipped:
      print("Your package is on its way with the courier team.");
      break;
    case OrderStatus.delivered:
      print("Delivered! The package reached its final destination.");
      break;
  }
}

void main() {
  notifyOrderStatus(OrderStatus.pending);
  notifyOrderStatus(OrderStatus.shipped);
  notifyOrderStatus(OrderStatus.delivered);
}
