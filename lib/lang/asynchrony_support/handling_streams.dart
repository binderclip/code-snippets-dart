import 'dart:async';

Stream<int> asynchronousNaturalsTo(int n) async* {
  int k = 0;
  while (k < n) yield k++;
}

main() async {
  await for (var n in asynchronousNaturalsTo(5)) {
    print(n);
  }
}

// https://www.dartlang.org/guides/language/language-tour#handling-streams
// https://www.dartlang.org/guides/libraries/library-tour#stream
// https://www.dartlang.org/guides/libraries/library-tour#dartasync---asynchronous-programming
// https://www.dartlang.org/articles/language/await-async
// https://www.dartlang.org/articles/language/beyond-async
