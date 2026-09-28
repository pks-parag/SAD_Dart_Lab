import 'dart:io';

void main() {
  File original = File('hello.txt');
  if (!original.existsSync()) {
    original.writeAsStringSync('Initial content\n');
  }
  original.copySync('hello_copy.txt');
  print("File copied to hello_copy.txt");
}
