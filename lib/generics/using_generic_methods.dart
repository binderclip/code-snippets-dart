T first<T>(List<T> ts) {
  // Do some initial work or error checking, then...
  T tmp = ts[0];
  // Do some additional checking or processing...
  return tmp;
}

main() {
  var strList = ['a', 'b', 'c'];
  var intList = [1, 2, 3];
  String s = first(strList);
  print(s);
  int i = first(intList);
  print(i);
  // int i2 = first(strList); // error
}

// https://www.dartlang.org/guides/language/language-tour#using-generic-methods
// https://github.com/dart-lang/sdk/blob/master/pkg/dev_compiler/doc/GENERIC_METHODS.md
