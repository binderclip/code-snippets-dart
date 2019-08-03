// Define a function.
printInteger(int aNumber) {
  print('The number is $aNumber, plus 1 is ${aNumber + 1}.'); // Print to console.
}

// type-annotating
bool isGreaterThan10(int n) {
  return n > 10;
}

// still works if you omit the types, as dynamic type
isGreaterThan20(n) {
  return n > 20;
}

// The => expr syntax is a shorthand for { return expr; }
// The => notation is sometimes referred to as fat arrow syntax
bool isGreaterThan30(int n) => n > 30;

main() {
  printInteger(10);

  assert(isGreaterThan10(15));
  assert(!isGreaterThan10(5));
  assert(isGreaterThan20(23.3));
  assert(isGreaterThan20(23));
}


// https://www.dartlang.org/guides/language/language-tour#functions
// https://api.dartlang.org/dev/dart-core/Function-class.html
// https://www.dartlang.org/guides/language/language-tour#callable-classes
// https://www.dartlang.org/guides/language/effective-dart/design#prefer-type-annotating-public-fields-and-top-level-variables-if-the-type-isnt-obvious
