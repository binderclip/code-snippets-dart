testInitMap() {
  print('=== testInitMap ===');
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 'golden rings'
  };

  var nobleGases = new Map();
  print(gifts);
  print(nobleGases);
}

testModifyMap() {
  print('=== testModifyMap ===');
  var gifts = {
    'first': 'partridge',
  };
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';
  print(gifts);

  var nobleGases = new Map();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  print(nobleGases);
}

testRetrieveMapValue() {
  print('=== testRetrieveMapValue ===');
  var gifts = {
    'first': 'partridge',
  };
  assert(gifts['first'] == 'partridge');
  assert(gifts['second'] == null);
  assert(gifts.length == 1);
}

testConstMap() {
  print('=== testConstMap ===');
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
