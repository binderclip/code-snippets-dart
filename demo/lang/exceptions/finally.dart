void hello() {
  print('hello');
}

testUnimplement() => throw UnimplementedError();

main() {
  try {
    hello();
//    testUnimplement();
  } on UnimplementedError {
    print('UnimplementedError');
  } finally {
    print('finally');
  }
}

// https://www.dartlang.org/guides/language/language-tour#finally
