foo() {}

void bar() {}

baz() {
  return;
}

int qux() {
  return 1;
}

main() {
  print(foo());
  // print(bar()); // warning: The expression here has a type of 'void', and therefore cannot be used.
  print(baz());
  print(qux());
}

// https://www.dartlang.org/guides/language/language-tour#return-values
