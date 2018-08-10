printType(a) {
  print(a.runtimeType);
}

testPrintType() {
  print('=== testPrintType ===');
  var a = 1;
  var b = 1.1;
  var c = 'c';
  var d = [1];
  var e = Map();
  var f = '\u{1f44f}';
  var g = Runes('\u{1f44f}');
  printType(a);
  printType(b);
  printType(c);
  printType(d);
  printType(e);
  printType(f);
  printType(g);
}

main() {
  testPrintType();
}

// https://www.dartlang.org/guides/language/language-tour#getting-an-objects-type
// https://api.dartlang.org/stable/dart-core/Type-class.html
