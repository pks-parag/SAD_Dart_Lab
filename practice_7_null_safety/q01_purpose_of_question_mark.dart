/*
Explanation:
In Dart Null Safety, the '?' operator appended to a type (like int? or String?)
marks the variable as nullable. This informs the compiler that the variable can
either hold a valid value of that type or null.
*/

void main() {
  int? nullableNumber = null;
  print("Nullable number: $nullableNumber");
  nullableNumber = 42;
  print("Nullable number after assignment: $nullableNumber");
}
