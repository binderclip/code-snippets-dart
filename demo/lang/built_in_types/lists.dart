import '../../lib/stack_trace/stack_trace.dart';

testList() {
  printFuncName();
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

listIndexDemo() {
  printFuncName();
  var l = ['a', 'b', 'c'];
  print(l);
  print(l[0]);
  print(l[l.length - 1]);
  // print(l[-1]); // RangeError (index): Invalid value: Not in range 0..2, inclusive: -1
  // print(l[5]); // RangeError (index): Invalid value: Not in range 0..2, inclusive: 5
}

main() {
  testList();
  listIndexDemo();
}


// https://www.dartlang.org/guides/language/language-tour#lists
// https://www.dartlang.org/guides/language/language-tour#generics
// https://www.dartlang.org/guides/libraries/library-tour#collections
