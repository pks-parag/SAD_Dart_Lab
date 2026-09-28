/*
Q2: What is Future in dart?

Answer:
A Future in Dart represents a computation that doesn't finish immediately.
It represents a potential value or error that will become available at some point
in the future. It can be in one of two states:
1. Uncompleted
2. Completed (with a value or with an error)
*/

void main() {
  Future<String> fetchData = Future.delayed(Duration(seconds: 1), () => "Data ready");
  fetchData.then((val) => print("Future completed with: $val"));
}
