import '../../lib/stack_trace/stack_trace.dart';

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

main() {
  testInitMap();
  testModifyMap();
  testRetrieveMapValue();
  testConstMap();
}

// https://www.dartlang.org/guides/language/language-tour#maps
// https://api.dartlang.org/dev/dart-core/Map-class.html
// https://www.dartlang.org/guides/language/language-tour#generics
// https://www.dartlang.org/guides/libraries/library-tour#maps
