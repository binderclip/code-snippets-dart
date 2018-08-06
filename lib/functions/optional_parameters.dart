import 'package:meta/meta.dart';

enableFlags({bool bold, bool hidden}) {
  print('bold: $bold, hidden: $hidden');
}

setName({@required String firstName, String lastName}) {
  print('firstName: $firstName, lastName: $lastName');
}

testOptionalNamedParameters() {
  print('=== testOptionalNamedParameters ===');
  enableFlags(bold: true, hidden: false);
  enableFlags(bold: true);
  enableFlags(hidden: false);
  // enableFlags(true, false); // error: No top-level method 'enableFlags' with matching arguments declared.

  setName(firstName: 'Wythe');
  setName(firstName: 'Wythe', lastName: 'Zhou');
  // setName(lastName: 'Zhou'); // warning: The parameter 'firstName' is required.
  // setName(); // warning: The parameter 'firstName' is required.
}

post(String from, String msg, [String platform]) {
  var result = '$from posts "$msg"';
  if (platform != null) {
    result = '$result on $platform';
  }
  print(result);
}

testOptionalPositionalParameters() {
  print('=== testOptionalPositionalParameters ===');
  post('clip', "感觉秋天快来了​");
  post('clip', "这将是一个困难", "Google+");
}

enableFlags2({bool bold, bool hidden = true}) {
  print('bold: $bold, hidden: $hidden');
}

post2(String from, String msg, [String platform = 'Weibo', String mood]) {
  var result = '$from posts "$msg"';
  if (platform != null) {
    result = '$result on $platform';
  }
  if (mood != null) {
    result = '$result (in a $mood mood)';
  }
  print(result);
}

post3(String from, String msg, {String platform = 'Weibo', String mood}) {
  var result = '$from posts "$msg"';
  if (platform != null) {
    result = '$result on $platform';
  }
  if (mood != null) {
    result = '$result (in a $mood mood)';
  }
  print(result);
}

void doStuff(
    {List<int> list = const [1, 2, 3],
      Map<String, String> gifts = const {
        'first': 'paper',
        'second': 'cotton',
        'third': 'leather'
      }}) {
  print('list:  $list');
  print('gifts: $gifts');
}

testDefaultParameterValues() {
  print('=== testDefaultParameterValues ===');
  enableFlags2();
  post2('clip', '感觉自己坏掉了');
  post2('clip', '感觉自己坏掉了', 'Weibo', 'suck');
  post3('clip', '被修好了！', mood: 'fixed');
  doStuff();
  doStuff(list: [4, 5, 6]);
}

main() {
  testOptionalNamedParameters();
  testOptionalPositionalParameters();
  testDefaultParameterValues();
}

// https://www.dartlang.org/guides/language/language-tour#optional-parameters
// https://pub.dartlang.org/documentation/meta/latest/meta/required-constant.html
// https://stackoverflow.com/questions/13264230/what-is-the-difference-between-named-and-optional-parameters-in-dart
