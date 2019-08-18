
import 'package:stack_trace/stack_trace.dart';

demoFunc() {
  print(Trace.current().frames[0].member);  // prints "main" unless minified.
}

printFuncName() {
  final funcName = Trace.current().frames[1].member;
  print("=== $funcName ===");
}

main() {
  demoFunc();
  printFuncName();
}
