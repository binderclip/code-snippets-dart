class WannabeFunction {
  call(String a, String b, String c) => '$a $b $c!';
}

main() {
  var wf = new WannabeFunction();
  var out = wf("Hi", "there,", "gang");
  print(out);
}

// https://www.dartlang.org/guides/language/language-tour#callable-classes
// https://www.dartlang.org/articles/language/emulating-functions
