testRunesAndStringTrans() {
  print('=== testRunesAndStringTrans ===');
  var clappingString = '\u{1f44f}';
  var clappingRunes = new Runes('\u{1f44f}');
  for (var i = 0; i < clappingString.runes.toList().length; i++) {
    assert(clappingString.runes.toList()[i] == clappingRunes.toList()[i]);
  }
  // assert(clappingString.runes == clappingRunes); // error: is not true.
  print(clappingRunes.toString());
  // assert(clappingString == clappingRunes.toString()); // error: is not true.
  var clappingRunesString = new String.fromCharCodes(clappingRunes);
  assert(clappingString == clappingRunesString);
}

testRunesAndStringLength() {
  print('=== testRunesAndStringLength ===');
  var heartRunes = new Runes('\u2665');
  print("'$heartRunes' len ${heartRunes.length}");

  var clappingRunes = new Runes('\u{1f44f}');
  print("'$clappingRunes' len ${clappingRunes.length}");

  var clappingClappingRunes = new Runes('\u{1f44f} 👏');
  print("'$clappingClappingRunes' len ${clappingClappingRunes.length}");

  var blackClappingRunes = new Runes('👏🏿');
  print("'$blackClappingRunes' len ${blackClappingRunes.length}");

  var clipRunes = new Runes('夹');
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
