void main() {
  Map<String, dynamic> person = {
    "name": "Parag",
    "address": "Sylhet",
    "age": 22,
    "country": "Bangladesh"
  };

  print("Original Person Details:");
  person.forEach((key, value) => print("$key: $value"));

  // Update country
  person["country"] = "Japan";

  print("\nUpdated Person Details:");
  person.forEach((key, value) => print("$key: $value"));
}
