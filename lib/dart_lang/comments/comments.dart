/// A domesticated South American camelid (Lama glama).
///
/// Andean cultures have used llamas as meat and pack
/// animals since pre-Hispanic times.
class Llama {
  String name;

  /// Feeds your llama [Food].
  ///
  /// The typical llama eats one bale of hay per week.
  void feed(String food) {
    // ...
  }

  /// Exercises your llama with an [activity] for
  /// [timeLimit] minutes.
  void exercise(String activity, int timeLimit) {
    // ...
  }
}

main() {
  // TODO: refactor into an AbstractLlamaGreetingFactory?
  print('Welcome to my Llama farm!');
  /*
   * This is a lot of work. Consider raising chickens.

  Llama larry = Llama();
  larry.feed();
  larry.exercise();
  larry.clean();
   */
}

// https://www.dartlang.org/guides/language/language-tour#comments
// https://www.dartlang.org/guides/language/language-tour#documentation-comments
// https://github.com/dart-lang/dartdoc#dartdoc
// https://www.dartlang.org/guides/language/effective-dart/documentation
