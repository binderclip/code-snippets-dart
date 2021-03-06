import 'dart:io';

import 'package:dart_code_snippets/stack_trace/stack_trace.dart';

printPWD() {
  printFuncName();
  Directory current = Directory.current;
  print(current);
}

createDirectoryDemo() {
  printFuncName();
  final dir = 'demo/dart-lib/io/foo/bar';
  new Directory(dir).create(recursive: true)
    // The created directory is returned as a Future.
    .then((Directory directory) {
      print(directory.path);
  });
  // create 函数可以重复执行，存在会跳过
}

listDirectoryDemo() {
  printFuncName();
  final dir = Directory.current;

  dir.list(recursive: false, followLinks: false)
    .listen((FileSystemEntity entity) {
      final entityType = entity is File ? 'file' : (entity is Directory ? 'dir' : 'link');
      print("${entity.path}, $entityType");
    });
}

dirFromStringDemo() {
  printFuncName();
  final dir = Directory('~/');
  print(dir);
}

main() {
  // printPWD();
  // createDirectoryDemo();
  // listDirectoryDemo();
  dirFromStringDemo();
}
