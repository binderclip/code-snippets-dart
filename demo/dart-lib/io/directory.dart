import 'dart:io';

import '../../lib/stack_trace/stack_trace.dart';

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
      print("$entity.path, $entityType, $entity.type");
    });
}

main() {
  // printPWD();
  // createDirectoryDemo();
  listDirectoryDemo();
}
