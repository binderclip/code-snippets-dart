import 'dart:io';
import "package:stack_trace";

printPWD() {
  Directory current = Directory.current;
  print(current);
}

readFileDemo() {
  new File('demo.txt').readAsString().then((String contents) {
    print(contents);
  });
}

main() {
  printPWD();
  // readFileDemo();
  var stack = StackTrace.current;
  var stackString = "$stack";
  print(stackString);
}

// https://api.flutter.dev/flutter/dart-io/File-class.html
