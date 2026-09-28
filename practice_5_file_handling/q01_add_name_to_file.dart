import 'dart:io';

void main() {
  File file = File('hello.txt');
  file.writeAsStringSync('Parag Kishor Shornob\n');
  print("Name written to hello.txt successfully.");
}
