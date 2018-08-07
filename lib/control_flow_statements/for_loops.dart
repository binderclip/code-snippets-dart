main() {
  var message = StringBuffer('Dart is fun');
  for (var i = 0; i < 5; i++) {
    message.write('!');
  }
  print(message);

  var callbacks = [];
  for (var i = 0; i < 2; i++) {
    callbacks.add(() => print(i));
  }
  callbacks.forEach((c) => c());

  var collection = [0, 1, 2];
  for (var x in collection) {
    print(x); // 0 1 2
  }

//  for (var x in "Hello") { // String doesn't implement Iterable
//    print(x);
//  }
}

// https://www.dartlang.org/guides/language/language-tour#for-loops
