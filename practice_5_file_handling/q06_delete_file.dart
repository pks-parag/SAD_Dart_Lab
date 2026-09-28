import 'dart:io';

void main() {
  File fileCopy = File('hello_copy.txt');
  if (fileCopy.existsSync()) {
    fileCopy.deleteSync();
    print("hello_copy.txt deleted successfully.");
  } else {
    print("hello_copy.txt does not exist.");
  }
}
