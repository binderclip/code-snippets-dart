import '../../lib/stack_trace/stack_trace.dart';

testInt() {
  printFuncName();
  int i = 1;
  int hex = 0xDEADBEEF;
  print('$i, $hex');
}

testDouble() {
  printFuncName();
  double y = 1.1;
  double exponents = 1.42e5;
  print('$y, $exponents');
}

testIntAndDouble() {
  printFuncName();
  double d1 = 1.4;
  double d2 = 1.5;
  int i1a = d1.toInt();
  int i1b = d1.round();
  int i2 = d2.round();
  print('$i1a, $i1b, $i2');

  double d3 = 1 / 2; // 0.5
  int i3 = 1 ~/ 2; // 0
  print('$d3, $i3');

  int i4 = 5;
  double d4 = i4.toDouble();
  print('$i4, $d4');
}

testNumberAndString() {
  printFuncName();

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
  printFuncName();
  assert((3 << 1) == 6); // 0011 << 1 == 0110
  assert((3 >> 1) == 1); // 0011 >> 1 == 0001
  assert((3 | 4) == 7); // 0011 | 0100 == 0111
}

testConstNumbers() {
  printFuncName();
  const msPerSecond = 1000;
  const secondsUntilRetry = 5;
  const msUntilRetry = secondsUntilRetry * msPerSecond;
  print('$msUntilRetry');
}

main() {
  // testInt();
  // testDouble();
  testIntAndDouble();
  // testNumberAndString();
  // testBitwiseOperation();
  // testConstNumbers();
}

// https://www.dartlang.org/guides/language/language-tour#numbers
// https://api.dartlang.org/stable/dart-core/num-class.html
// https://stackoverflow.com/questions/20788320/how-to-convert-a-double-to-an-int-in-dart
