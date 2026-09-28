Future<List<String>> sortStringsAsync(List<String> list) async {
  await Future.delayed(Duration(seconds: 1));
  List<String> sortedList = List.from(list)..sort();
  return sortedList;
}

void main() async {
  List<String> items = ["Banana", "Apple", "Mango", "Cherry"];
  print("Original list: $items");
  print("Sorting asynchronously...");
  List<String> result = await sortStringsAsync(items);
  print("Sorted list: $result");
}
