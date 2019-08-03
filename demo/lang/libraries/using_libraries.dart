import 'dart:math';
import 'package:english_words/english_words.dart';
import 'package:uuid/uuid.dart' as uuid;
import 'package:uuid/aes.dart' show AES;
import 'package:uuid/uuid_util.dart' hide UuidUtil;
import 'package:quiver/strings.dart' deferred as q_strings;

main() {
  print(sqrt(2));
  nouns.take(5).forEach(print);

  var u = new uuid.Uuid();
  print(u.v1());

  q_strings.loadLibrary(); // before use, load first
  print('isNotEmpty: ' + q_strings.isNotEmpty(' ').toString());
}

// https://www.dartlang.org/guides/language/language-tour#using-libraries
