import 'dart:io';

import '../../lib/stack_trace/stack_trace.dart';

readFileDemo() {
  printFuncName();
  new File('demo/dart-lib/io/demo.txt').readAsString().then((String contents) {
    print(contents);
  });
}

createFileDemo() {
  printFuncName();
  final filename = 'demo/dart-lib/io/x/demo-w.txt';
  new File(filename).writeAsString('some content')
    .then((File file) {
      file.readAsString().then((String contents) {
        print(contents);
      });
    });
}

main() {
  // readFileDemo();
  createFileDemo();
}

// https://api.flutter.dev/flutter/dart-io/File-class.html
