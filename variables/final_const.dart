main() {
  final name = 'Bob'; // Without a type annotation
  final String nickname = 'Bobby';
  // name = 'Alice'; // Cannot assign to final variable 'name='

  const foo = 1000000; // Unit of pressure (dynes/cm2)
  const double atm = 1.01325 * foo; // Standard atmosphere

  var bar = const [];
  final baz = const [];
  // ??? It seems doesn't work as described in the doc.
  // const qux = []; // expression is not a valid compile-time constant
  const qux = const [];

  print('$name, $nickname, $foo, $atm, $bar, $baz, $qux');
}

// https://www.dartlang.org/guides/language/language-tour#final-and-const
