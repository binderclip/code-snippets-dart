import 'dart:math';

import '../../lib/stack_trace/stack_trace.dart';

class Point {
  num x, y;

  Point(this.x, this.y);

  num distanceTo(Point other) {
    var dx = x - other.x;
    var dy = y - other.y;
    return sqrt(dx * dx + dy * dy);
  }
}


void testInstanceMethods() {
  printFuncName();
  var p1 = Point(1, 1);
  var p2 = Point(4, 5);
  print(p1.distanceTo(p2));
}


class Rectangle {
  num left, top, width, height;

  Rectangle(this.left, this.top, this.width, this.height);

  // Define two calculated properties: right and bottom.
  num get right => left + width;
  set right(num value) => left = value - width;
  num get bottom => top + height;
  set bottom(num value) => top = value - height;
}


void testGettersAndSetters() {
  printFuncName();
  var r = Rectangle(1, 2, 3, 4);
  print('(${r.left}, ${r.right})');
  r.right = 3;
  print('(${r.left}, ${r.right})');
}


abstract class Doer {
  // Define instance variables and methods...
  void doSomething(); // Define an abstract method.
}


class EffectiveDoer extends Doer {
  void doSomething() {
    // Provide an implementation, so the method is not abstract here...
    print('in EffectiveDoer doSomething');
  }
}


void testAbstractMethods() {
  printFuncName();
//  var doer = Doer(); // Error: The class 'Doer' is abstract and can't be instantiated.
  var eDoer = EffectiveDoer();
  eDoer.doSomething();
}


main() {
  testInstanceMethods();
  testGettersAndSetters();
  testAbstractMethods();
}

// https://www.dartlang.org/guides/language/language-tour#methods
