import 'dart:async';

Future<String> lookUpVersion() async => '1.0.0';

main() async {
  print(lookUpVersion()); // Instance of 'Future<String>'
  print(await lookUpVersion());
}

// https://www.dartlang.org/guides/language/language-tour#declaring-async-functions
