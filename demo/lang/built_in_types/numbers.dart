testInt() {
  print('=== testInt ===');
  int i = 1;
  int hex = 0xDEADBEEF;
  print('$i, $hex');
}

testDouble() {
  print('=== testDouble ===');
  double y = 1.1;
  double exponents = 1.42e5;
  print('$y, $exponents');
}

testNumberAndString() {
  print('=== testNumberAndString ===');

  // String -> int
  var one = int.parse('1');
  assert(one == 1);

  // String -> double
  var onePointOne = double.parse('1.1');
  assert(onePointOne == 1.1);

  // int -> String
  String oneAsString = 1.toString();
  assert(oneAsString == '1');

  // double -> String
  String piAsString = 3.14159.toStringAsFixed(2);
  assert(piAsString == '3.14');
}

testBitwiseOperation() {
  print('=== testBitwiseOperation ===');
  assert((3 << 1) == 6); // 0011 << 1 == 0110
  assert((3 >> 1) == 1); // 0011 >> 1 == 0001
  assert((3 | 4) == 7); // 0011 | 0100 == 0111
}

testConstNumbers() {
  print('=== testConstNumbers ===');
  const msPerSecond = 1000;
  const secondsUntilRetry = 5;
  const msUntilRetry = secondsUntilRetry * msPerSecond;
  print('$msUntilRetry');
}

main() {
  testInt();
  testDouble();
  testNumberAndString();
  testBitwiseOperation();
  testConstNumbers();
}

// https://www.dartlang.org/guides/language/language-tour#numbers
// https://api.dartlang.org/stable/dart-core/num-class.html
