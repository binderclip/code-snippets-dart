import 'package:meta/meta.dart';

void enableFlags({bool bold, bool hidden}) {
  print('bold: $bold, hidden: $hidden');
}

void setName({@required String firstName, String lastName}) {
  print('firstName: $firstName, lastName: $lastName');
}

testOptionalNamedParameters() {
  print('=== testOptionalNamedParameters ===');
  enableFlags(bold: true, hidden: false);
  enableFlags(bold: true);
  enableFlags(hidden: false);

  setName(firstName: 'Wythe');
  setName(firstName: 'Wythe', lastName: 'Zhou');
  // setName(lastName: 'Zhou');  // warning: The parameter 'firstName' is required.
  // setName();  // warning: The parameter 'firstName' is required.
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
