testStringWithQuotes() {
  print('=== testStringWithQuotes ===');
  var s1 = 'Single quotes work well for string literals.';
  var s2 = "Double quotes work just as well.";
  var s3 = 'It\'s easy to escape the string delimiter.';
  var s4 = "It's even easier to use the other delimiter.";
  print(s1);
  print(s2);
  print(s3);
  print(s4);
}

testStringInterpolation() {
  print('=== testStringInterpolation ===');
  var s = 'string interpolation';

  assert('Dart has $s, which is very handy.' ==
      'Dart has string interpolation, ' + 'which is very handy.');
  assert('That deserves all caps. ' + '${s.toUpperCase()} is very handy!' ==
      'That deserves all caps. ' + 'STRING INTERPOLATION is very handy!');
}

testConcatenateString() {
  print('=== testConcatenateString ===');
  var s1 = 'String '
      'concatenation'
      " works even over line breaks.";
  assert(s1 ==
      'String concatenation works even over '
      'line breaks.');

  var s2 = 'The + operator ' + 'works, as well.';
  assert(s2 == 'The + operator works, as well.');

  var s3 = 'String concatenation ' 'works in one line';
  assert(s3 == 'String concatenation works ' + 'in one line');
}

testMultiLineString() {
  print('=== testMultiLineString ===');
  var s1 = '''first line
second line''';
  var s2 = '''
first line
second line''';
  var s3 = '''
first line
second line
''';
  var s4 = """
first line
second line
""";
  assert(s1 == s2);
  assert(s1 != s3);
  assert(s1 != s4);
}

testRawString() {
  print('=== testRawString ===');
  var s1 = 'In a normal string,\nsome chars will be escaped.';
  print(s1);
  var s2 = r'In a raw string, not even \n gets special treatment.';
  print(s2);
}

testCompileTimeConstantInterpolatedExpression() {
  print('=== testCompileTimeConstantInterpolatedExpression ===');
  // These work in a const string.
  const aConstNum = 0;
  const aConstBool = true;
  const aConstString = 'a constant string';

  // These do NOT work in a const string.
  var aNum = 0;
  var aBool = true;
  var aString = 'a string';
  const aConstList = [1, 2, 3];

  const validConstString = '$aConstNum $aConstBool $aConstString';
  // error: expression is not a valid compile-time constant
  // const invalidConstString = '$aNum $aBool $aString $aConstList';
}

main() {
  testStringWithQuotes();
  testStringInterpolation();
  testConcatenateString();
  testMultiLineString();
  testRawString();
  testCompileTimeConstantInterpolatedExpression();
}

// https://www.dartlang.org/guides/language/language-tour#strings
// https://www.dartlang.org/guides/libraries/library-tour#strings-and-regular-expressions
