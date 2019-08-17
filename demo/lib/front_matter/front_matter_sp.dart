import 'package:front_matter/front_matter.dart' as fm;

import '../stack_trace/stack_trace.dart';

final s = '''---
foo: bar
baz: qux
a:
  - 1
  - 2
  - 3
---
hello world
''';


loadDemo() {
  printFuncName();
  var doc = fm.parse(s);
  print(doc);
  print('>>>');
  print(doc.data);
  print('>>>');
  print(doc.data['baz']);
  print('>>>');
  print(doc.content);
  print('>>>');
}

writeBackDemo() {
  printFuncName();
  // not support
}

main() {
  loadDemo();
  writeBackDemo();
}
