class House {
  int id;
  String name;
  double price;

  House(this.id, this.name, this.price);

  void printDetails() {
    print("House ID: $id | Name: $name | Price: \$$price");
  }
}

void main() {
  List<House> houses = [];
  houses.add(House(101, "Green Villa", 250000));
  houses.add(House(102, "Lake View Apartment", 180000));
  houses.add(House(103, "Hilltop Residence", 320000));

  for (var house in houses) {
    house.printDetails();
  }
}
