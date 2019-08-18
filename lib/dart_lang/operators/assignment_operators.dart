main() {
  var a = 1;
  var b = 2;
  var c = null;

  var value = 10;

  // Assign value to a
  a = value;
  // Assign value to b/c if b/c is null; otherwise, b/c stays the same
  b ??= value;
  c ??= value;

  print("$a, $b, $c");


  var d = 2; // Assign using =
  d *= 3; // Assign and multiply: d = d * 3
  assert(d == 6);
}

// https://www.dartlang.org/guides/language/language-tour#assignment-operators
