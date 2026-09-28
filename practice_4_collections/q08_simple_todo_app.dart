import 'dart:io';

void main() {
  List<String> todos = [];

  while (true) {
    print("\n--- To-Do Menu ---");
    print("1. Add Task");
    print("2. Remove Task");
    print("3. View Tasks");
    print("4. Exit");
    stdout.write("Choose an option: ");
    String? choice = stdin.readLineSync();

    if (choice == '1') {
      stdout.write("Enter task: ");
      String task = stdin.readLineSync() ?? '';
      if (task.isNotEmpty) todos.add(task);
    } else if (choice == '2') {
      stdout.write("Enter task index to remove (1-based): ");
      int? idx = int.tryParse(stdin.readLineSync() ?? '');
      if (idx != null && idx > 0 && idx <= todos.length) {
        todos.removeAt(idx - 1);
        print("Task removed!");
      } else {
        print("Invalid index!");
      }
    } else if (choice == '3') {
      print("\nYour Tasks:");
      if (todos.isEmpty) print("No tasks available.");
      for (int i = 0; i < todos.length; i++) {
        print("\${i + 1}. \${todos[i]}");
      }
    } else if (choice == '4') {
      print("Exiting...");
      break;
    }
  }
}
