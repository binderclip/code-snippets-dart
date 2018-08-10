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

main() {
  c();
  l();
}

// https://www.dartlang.org/guides/language/language-tour#handling-futures
