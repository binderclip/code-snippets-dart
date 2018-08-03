testList() {
  print('=== testList ===');
  var list = [1, 2, 3];
  assert(list.length == 3);
  assert(list[1] == 2);

  list[1] = 1;
  assert(list[1] == 1);
  var constantList = const [1, 2, 3];
  // constantList[1] = 1;  // error: Cannot modify an unmodifiable list

  print(list);
  print(list.toString());
  print('$constantList');
}

main() {
  testList();
}


// https://www.dartlang.org/guides/language/language-tour#lists
// https://www.dartlang.org/guides/language/language-tour#generics
// https://www.dartlang.org/guides/libraries/library-tour#collections
