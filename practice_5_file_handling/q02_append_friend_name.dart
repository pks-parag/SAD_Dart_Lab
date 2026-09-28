import 'dart:io';

void main() {
  File file = File('hello.txt');
  file.writeAsStringSync('Habibur Rahman Rujon\n', mode: FileMode.append);
  print("Friend's name appended to hello.txt.");
}
