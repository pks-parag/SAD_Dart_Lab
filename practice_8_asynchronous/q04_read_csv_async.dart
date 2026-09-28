import 'dart:io';

Future<void> readCsvFile() async {
  File file = File('data.csv');
  if (!await file.exists()) {
    await file.writeAsString("Name,Skill\nParag,Dart & Flutter\nHabib,Python\n");
  }
  
  String content = await file.readAsString();
  print("CSV Content:\n$content");
}

void main() async {
  await readCsvFile();
}
