import 'dart:io';

void main() {
  Directory dir = Directory('batch_files');
  if (!dir.existsSync()) {
    dir.createSync();
  }
  
  for (int i = 1; i <= 100; i++) {
    File file = File('\${dir.path}/file_\$i.txt');
    file.writeAsStringSync('This is file number \$i');
  }
  print("100 files created inside batch_files directory.");
}
