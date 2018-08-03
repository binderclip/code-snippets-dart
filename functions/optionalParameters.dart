void enableFlags({bool bold, bool hidden}) {
  print('bold: $bold, hidden: $hidden');
}

void setName({String firstName, String lastName}) {

}

testOptionalNamedParameters() {
  print('=== testOptionalNamedParameters ===');
  enableFlags(bold: true, hidden: false);
  enableFlags(bold: true);
  enableFlags(hidden: false);
}

testOptionalPositionalParameters() {
  print('=== testOptionalPositionalParameters ===');
}

testDefaultParameterValues() {
  print('=== testDefaultParameterValues ===');
}

main() {
  testOptionalNamedParameters();
  testOptionalPositionalParameters();
  testDefaultParameterValues();
}

// https://www.dartlang.org/guides/language/language-tour#optional-parameters
// https://pub.dartlang.org/documentation/meta/latest/meta/required-constant.html
