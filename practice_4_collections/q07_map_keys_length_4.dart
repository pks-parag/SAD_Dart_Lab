void main() {
  Map<String, String> contacts = {
    "John": "01700000000",
    "Alex": "01800000000",
    "Parag": "01900000000",
    "Sara": "01600000000",
    "David": "01500000000"
  };

  var keysWithLengthFour = contacts.keys.where((key) => key.length == 4);
  print("Keys with length 4:");
  for (var key in keysWithLengthFour) {
    print("$key: ${contacts[key]}");
  }
}
