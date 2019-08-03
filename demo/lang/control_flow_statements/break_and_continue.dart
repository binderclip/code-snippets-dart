main() {
  print('=== break ===');
  var i = 2;
  while (true) {
    if (i < 0) break;
    print(i--);
  }

  print('=== continue ===');
  for (int i = 0; i < 5; i++) {
    if (i % 2 == 0) {
      continue;
    }
    print(i);
  }

  print('=== where as filter ===');
  var l = [1, 2, 3, 4];
  var l2 = l.where((n) => n % 2 == 0);
  print(l2);
}

// https://www.dartlang.org/guides/language/language-tour#break-and-continue
