class Laptop {
  int id;
  String name;
  int ram; // in GB

  Laptop(this.id, this.name, this.ram);

  void printDetails() {
    print("Laptop ID: $id | Model: $name | RAM: \${ram}GB");
  }
}

void main() {
  Laptop l1 = Laptop(1, "Dell Inspiron 15", 16);
  Laptop l2 = Laptop(2, "MacBook Air M2", 8);
  Laptop l3 = Laptop(3, "Lenovo ThinkPad", 32);

  l1.printDetails();
  l2.printDetails();
  l3.printDetails();
}
