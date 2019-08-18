abstract class Musical {
  bool canPlayPiano = false;
  bool canCompose = false;
  bool canConduct = false;

  void entertainMe() {
    if (canPlayPiano) {
      print('Playing piano');
    } else if (canConduct) {
      print('Waving hands');
    } else {
      print('Humming to self');
    }
  }
}

class Performer {}
class Person {
  String name;
}

abstract class Aggressive {}
abstract class Demented {}

class Musician extends Performer with Musical {
  // ···
}

class Maestro extends Person  with Musical, Aggressive, Demented {
  Maestro(String maestroName) {
    name = maestroName;
    canConduct = true;
  }
}

main() {
  var maestro = Maestro('Ortseam');
  maestro.entertainMe();
}

// https://www.dartlang.org/guides/language/language-tour#adding-features-to-a-class-mixins
// https://github.com/dart-lang/sdk/blob/master/docs/language/informal/mixin-declaration.md
// https://www.dartlang.org/articles/language/mixins
