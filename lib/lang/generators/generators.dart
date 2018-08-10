import 'dart:async';

// Synchronous generator: Returns an Iterable object.
Iterable<int> naturalsTo(int n) sync* {
  int k = 0;
  while (k < n) yield k++;
}

// Asynchronous generator: Returns a Stream object.
Stream<int> asynchronousNaturalsTo(int n) async* {
  int k = 0;
  while (k < n) yield k++;
}

// If your generator is recursive, you can improve its performance by using yield*
// ???
Iterable<int> naturalsDownFrom(int n) sync* {
  if (n > 0) {
    yield n;
    yield* naturalsDownFrom(n - 1);
  }
}

main() async {
  for (var n in naturalsTo(5)) {
    print(n);
  }

  await for (var n in asynchronousNaturalsTo(5)) {
    print(n);
  }

  for (var n in naturalsDownFrom(5)) {
    print(n);
  }
}

// https://www.dartlang.org/guides/language/language-tour#generators
// https://api.dartlang.org/stable/dart-core/Iterable-class.html
// https://api.dartlang.org/stable/dart-async/Stream-class.html
// https://www.dartlang.org/articles/language/beyond-async
