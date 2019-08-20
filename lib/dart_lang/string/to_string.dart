class Foo {
  String bar;

  Foo(this.bar);

  @override
  String toString() {
    return "Foo(bar=${this.bar})";
  }
}

class Baz {
  String qux;

  Baz(this.qux);
}

main() {
  var foo = Foo('barrr');
  var baz = Baz('quxxx');

  print(foo);
  print(baz);
}
