mixin LoggerMixin {
  void logMessage(String logText) {
    print("[LOG - ${DateTime.now().toIso8601String().substring(11, 19)}]: $logText");
  }
}

class User with LoggerMixin {
  String accountUsername;

  User(this.accountUsername);

  void login() {
    logMessage("User '$accountUsername' signed in successfully.");
  }
}

class Product with LoggerMixin {
  String itemName;
  double itemPrice;

  Product(this.itemName, this.itemPrice);

  void updatePrice(double updatedPrice) {
    itemPrice = updatedPrice;
    logMessage("Price updated for '$itemName' to \$$itemPrice.");
  }
}

void main() {
  User activeUser = User("parag_shornob");
  activeUser.login();

  Product bookItem = Product("Mechanical Keyboard", 45.0);
  bookItem.updatePrice(40.0);
}
