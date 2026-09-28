void createUser(String name, int age, {bool isActive = true}) {
  print("User Details -> Name: $name, Age: $age, Active: $isActive");
}

void main() {
  createUser("Parag", 22);
  createUser("Alice", 25, isActive: false);
}
