class Car {
  String carModel;

  Car.manual(this.carModel) {
    print("$carModel has been configured with a Manual Transmission.");
  }

  Car.automatic(this.carModel) {
    print("$carModel has been configured with an Automatic Transmission.");
  }
}

void main() {
  Car sedan = Car.automatic("Toyota Premio");
  Car sportsCar = Car.manual("Ford Mustang");
}
