import 'dart:async';

Future<String> lookUpVersion() async => '1.0.0';

Future checkVersion() async {
  try {
    var version = await lookUpVersion();
    print('version: $version');
  } catch (e) {
    print('error: $e');
  }
}

c() {
  checkVersion();
}

l() async {
  print('lookup: ${await lookUpVersion()}');
}

p() {
  final version = lookUpVersion();
  print('p version: $version');
}

main() {
  c();
  l();
  p();
}

// https://www.dartlang.org/guides/language/language-tour#handling-futures
