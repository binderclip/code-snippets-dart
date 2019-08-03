
import 'package:stack_trace/stack_trace.dart';

demoFunc() {
  print(Trace.current().frames[0].member);  // prints "main" unless minified.
}

printFuncName() {
  print(Trace.current().frames[1].member);  // prints "main" unless minified.
}

main() {
  demoFunc();
  printFuncName();
}
