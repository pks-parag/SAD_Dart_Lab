Future<String> task1() async {
  await Future.delayed(Duration(seconds: 1));
  return "Task 1 completed";
}

Future<String> task2() async {
  await Future.delayed(Duration(seconds: 2));
  return "Task 2 completed";
}

Future<String> task3() async {
  await Future.delayed(Duration(seconds: 1));
  return "Task 3 completed";
}

void main() async {
  print("Executing multiple async operations...");
  List<String> results = await Future.wait([task1(), task2(), task3()]);
  print("All tasks finished:");
  for (var res in results) {
    print(" - $res");
  }
}
