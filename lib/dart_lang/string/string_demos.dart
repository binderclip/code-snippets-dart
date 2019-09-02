import 'package:dart_code_snippets/stack_trace/stack_trace.dart';

trimDemo() {
  printFuncName();
  var s = "   \ta b\t\n   \n";
  var ts = s.trim();
  print('${s.length}, "$s"');
  print('${ts.length}, "$ts"');
}

main() {
  // trimDemo();
  print("xxx".endsWith("x"));
}
