class Television {
  void turnOn() {
    print('in Television turnOn');
  }

  void play() {
    print('in Television play');
  }

  void turnOff() {
    print('in Television turnOff');
  }
}

class SmartTelevision extends Television {
  void turnOn() {
    super.turnOn();
    print('in SmartTelevision turnOn');
  }

  // ??? what's the difference with or without override
  @override
  void play() {
    print('in SmartTelevision play');
  }
}

void testExtendAndOverridingMembers() {
  print('=== testExtendAndOverridingMembers ===');
  var st = SmartTelevision();
  st.turnOn();
  st.play();
  st.turnOff();
}

class Vector {
  final int x, y;

  Vector(this.x, this.y);

  Vector operator +(Vector v) => Vector(x + v.x, y + v.y);
  Vector operator -(Vector v) => Vector(x - v.x, y - v.y);

  void show() {
    print('(${this.x}, ${this.y})');
  }
}

void testOverridableOperators() {
  print('=== testOverridableOperators ===');
  final v = Vector(2, 3);
  final w = Vector(2, 2);

  (v + w).show();
  (v - w).show();
}

abstract class N {
  void foo();
}

class A extends N {
  // Unless you override noSuchMethod, using a
  // non-existent member results in a NoSuchMethodError.
  @override
  void noSuchMethod(Invocation invocation) {
    print('You tried to use a non-existent member: ' +
        '${invocation.memberName}');
  }
}

class B {
}

void testNoSuchMethod() {
  print('=== testNoSuchMethod ===');
  dynamic a = A();
//  var b = B();
//  dynamic b2 = B();

  a.haha();
//  b.bar(); // Error: The method 'bar' isn't defined for the class '#lib1::B'.\
//  b2.bar(); // Unhandled exception: NoSuchMethodError: Class 'B' has no instance method 'bar'.
}

void main() {
  testExtendAndOverridingMembers();
  testOverridableOperators();
  testNoSuchMethod();
}

// https://www.dartlang.org/guides/language/language-tour#extending-a-class
// https://www.dartlang.org/guides/language/sound-dart
// https://www.dartlang.org/guides/language/sound-problems#the-covariant-keyword
