import 'package:yaml/yaml.dart';

import 'package:dart_code_snippets/stack_trace/stack_trace.dart';

final s = '''---
foo: bar
baz: qux 
''';

loadDemo() {
  printFuncName();
  var d = loadYaml(s);
  print(d);
}

dumpDemo() {
  printFuncName();
  // no dump...
}

main() {
  loadDemo();
  dumpDemo();
}
