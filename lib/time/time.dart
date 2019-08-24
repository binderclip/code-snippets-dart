import 'package:dart_code_snippets/stack_trace/stack_trace.dart';

int timestamp() {
  return DateTime.now().millisecondsSinceEpoch ~/ 1000;
}

currentTimeDemo() {
  printFuncName();
  print(DateTime.now());
}

readTimestampDemo() {
  printFuncName();
  print(new DateTime.now().millisecondsSinceEpoch);
  print(timestamp());
}

timestampToTimeDemo() {
  printFuncName();
  var dt = DateTime.fromMillisecondsSinceEpoch(1566630660599);
  print(dt);
}

main() {
  currentTimeDemo();
  readTimestampDemo();
  timestampToTimeDemo();
}
