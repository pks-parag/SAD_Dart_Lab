import 'dart:io';

void main() {
  File csvFile = File('students.csv');
  
  // Write student details
  String csvData = "Name,Age,Address\nParag,22,Sylhet\nRujon,23,Dhaka\nTanvir,21,Chittagong\n";
  csvFile.writeAsStringSync(csvData);
  print("Student data written to students.csv\n");

  // Read CSV
  print("Reading students.csv content:");
  List<String> lines = csvFile.readAsLinesSync();
  for (var line in lines) {
    print(line);
  }
}
