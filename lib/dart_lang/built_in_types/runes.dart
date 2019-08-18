import 'package:dart_code_snippets/stack_trace/stack_trace.dart';

testRunesAndStringTrans() {
  printFuncName();
  var clappingString = '\u{1f44f}';
  var clappingRunes = Runes('\u{1f44f}');
  for (var i = 0; i < clappingString.runes.toList().length; i++) {
    assert(clappingString.runes.toList()[i] == clappingRunes.toList()[i]);
  }
  // assert(clappingString.runes == clappingRunes); // error: is not true.
  print(clappingRunes.toString());
  // assert(clappingString == clappingRunes.toString()); // error: is not true.
  var clappingRunesString = String.fromCharCodes(clappingRunes);
  assert(clappingString == clappingRunesString);
}

testRunesAndStringLength() {
  printFuncName();
  var heartRunes = Runes('\u2665');
  print("'$heartRunes' len ${heartRunes.length}");

  var clappingRunes = Runes('\u{1f44f}');
  print("'$clappingRunes' len ${clappingRunes.length}");

  var clappingClappingRunes = Runes('\u{1f44f} 👏');
  print("'$clappingClappingRunes' len ${clappingClappingRunes.length}");

  var blackClappingRunes = Runes('👏🏿');
  print("'$blackClappingRunes' len ${blackClappingRunes.length}");

  var clipRunes = Runes('夹');
  print("'$clipRunes' len ${clipRunes.length}");

  var heartString = '\u2665';
  print("'$heartString' len ${heartString.length}");

  var clappingString = '\u{1f44f}';
  print("'$clappingString' len ${clappingString.length}");

  var blackClappingString = '👏🏿';
  print("'$blackClappingString' len ${blackClappingString.length}");

  var clipString = '夹';
  print("'$clipString' len ${clipString.length}");

}

main() {
  testRunesAndStringTrans();
  testRunesAndStringLength();
}

// https://www.dartlang.org/guides/language/language-tour#runes
// https://stackoverflow.com/questions/21521729/how-do-i-reverse-a-string-in-dart
