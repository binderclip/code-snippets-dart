main() {
  // ()
  String highlight(String s) => '!!!${s.toUpperCase()}!!!';
  print(highlight('be quick'));
  // []
  var l = [1, 2, 3];
  print('${l[0]}, ${l[1]}');
  // print('${l[10]}');  // RangeError (index): Invalid value: Not in range 0..2, inclusive: 10
  // .
  print(1.isEven);
  // ?.
  // print(null.a);  // NoSuchMethodError: The getter 'a' was called on null.
  print(null?.a);
}

// https://www.dartlang.org/guides/language/language-tour#other-operators
