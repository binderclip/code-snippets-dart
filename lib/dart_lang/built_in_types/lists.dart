import 'package:dart_code_snippets/dart_lang/typedefs/typedefs.dart';
import 'package:dart_code_snippets/stack_trace/stack_trace.dart';

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

initList() {
  printFuncName();
  print('== null list ==');
  List<int> l;
  print(l);
  // l.add(1); // NoSuchMethodError: The method 'add' was called on null.
  print('== fixed length list ==');
  l = new List(5);
  print(l);
  // l.add(1); // Unsupported operation: Cannot add to a fixed-length list
  l[0] = 1;
  print(l);
  print('== variable length list ==');
  l = new List();
  print(l);
  l.add(2);
  print(l);
  print('== variable with init length list ==');
  l = new List()..length = 2;
  print(l); // [null, null]
  l.add(3);
  l.add(4);
  l.add(5);
  print(l); // [null, null, 3, 4, 5]
}

sortListDemo() {
  printFuncName();
  var l = [3, 1, 2];
  l.sort();
  print(l);
  l.sort((a, b) => b - a);
  print(l);
}

main() {
  // testList();
  // listIndexDemo();
  // initList();
  sortListDemo();
}

// https://www.dartlang.org/guides/language/language-tour#lists
// https://www.dartlang.org/guides/language/language-tour#generics
// https://www.dartlang.org/guides/libraries/library-tour#collections
// Dart入门—集合类型 - 咖啡花园 - CSDN博客
// https://blog.csdn.net/hekaiyou/article/details/51374093
