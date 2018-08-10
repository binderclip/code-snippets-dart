class SomeBaseClass {}

class Foo<T extends SomeBaseClass> {
  // Implementation goes here...
  String toString() => "Instance of 'Foo<$T>'";
}

class Extender extends SomeBaseClass {}

main() {
  var someBaseClass = Foo<SomeBaseClass>();
  print(someBaseClass);
  var extender = Foo<Extender>();
  print(extender);

  var foo = Foo();
  print(foo);
}

// https://www.dartlang.org/guides/language/language-tour#restricting-the-parameterized-type
