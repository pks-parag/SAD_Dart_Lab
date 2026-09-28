void main() {
  List<String> friends = [
    "Anik",
    "Bijoy",
    "Apurba",
    "Shornob",
    "Arif",
    "Dipu",
    "Ashik"
  ];

  var namesStartingWithA = friends.where((name) => name.toLowerCase().startsWith('a'));
  print("Friends starting with 'A':");
  for (var name in namesStartingWithA) {
    print(name);
  }
}
