import 'package:dart_code_snippets/stack_trace/stack_trace.dart';

testInitMap() {
  printFuncName();
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 'golden rings'
  };

  var nobleGases = Map();
  print(gifts);
  print(nobleGases);
}

testModifyMap() {
  printFuncName();
  var gifts = {
    'first': 'partridge',
  };
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';
  print(gifts);

  var nobleGases = Map();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  print(nobleGases);
}

testRetrieveMapValue() {
  printFuncName();
  var gifts = {
    'first': 'partridge',
  };
  assert(gifts['first'] == 'partridge');
  assert(gifts['second'] == null);
  assert(gifts.length == 1);
}

testConstMap() {
  printFuncName();
  final constantMap = const {
    2: 'helium',
    10: 'neon',
    18: 'argon',
  };
  // constantMap[2] = 'Helium';  // error: Cannot set value in unmodifiable Map
  print(constantMap);
}

forInMapDemo() {
  printFuncName();
  var gifts = {
    'first': 'partridge',
  };
  for (var item in gifts.entries) {
    print('${item.key}: ${item.value}');
  }
  // gifts.keys
  // gifts.values
}

main() {
  testInitMap();
  testModifyMap();
  testRetrieveMapValue();
  testConstMap();
  forInMapDemo();
}

// https://www.dartlang.org/guides/language/language-tour#maps
// https://api.dartlang.org/dev/dart-core/Map-class.html
// https://www.dartlang.org/guides/language/language-tour#generics
// https://www.dartlang.org/guides/libraries/library-tour#maps
// https://stackoverflow.com/questions/53824755/flutter-dart-how-to-access-a-single-entry-in-a-map-object
