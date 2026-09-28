enum Gender { male, female, others }

void main() {
  print("All Gender Enum Values:");
  for (var g in Gender.values) {
    print(g.name);
  }
}
