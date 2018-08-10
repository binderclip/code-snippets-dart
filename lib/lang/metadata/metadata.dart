import 'todo.dart';

class Television {
  /// _Deprecated: Use [turnOn] instead._
  @deprecated
  void activate() {
    turnOn();
  }

  /// Turns the TV's power on.
  void turnOn() {}
}

@Todo('seth', 'make this do something')
void doSomething() {
  print('do something');
}

main() {
  var tv = Television();
  tv.activate();

  doSomething();
}

// https://www.dartlang.org/guides/language/language-tour#metadata
