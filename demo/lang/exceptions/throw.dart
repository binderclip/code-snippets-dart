import '../../lib/stack_trace/stack_trace.dart';

testThrowObject() {
  printFuncName();
  throw 'Out of llamas!';
}

testUnimplement() => throw UnimplementedError();

main() {
//  testThrowObject();
  testUnimplement();
}

// https://www.dartlang.org/guides/language/language-tour#throw
// https://api.dartlang.org/stable/dart-core/Error-class.html
// https://api.dartlang.org/stable/dart-core/Exception-class.html
