import 'package:yaml/yaml.dart';
import 'package:yamlicious/yamlicious.dart';

import '../../lib/stack_trace/stack_trace.dart';

final s = '''---
foo: bar
baz: qux 
''';

dumpDemo() {
  printFuncName();
  print('>>>');
  var d = loadYaml(s);
  var ys = toYamlString(d);
  print(ys);
  print('>>>');
  var d2 = {
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 'golden rings',
    'times': ['ta', 'tb', 'tc']
  };
  var ys2 = toYamlString(d2);
  print(ys2);
  print('>>>');
}

main() {
  dumpDemo();
}
