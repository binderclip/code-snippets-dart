import 'dart:math';

// Static variables (class variables) are useful for class-wide state and constants:
// Static variables aren’t initialized until they’re used.
class Queue {
  static const initialCapacity = 16;
}

class Point {
  num x, y;
  Point(this.x, this.y);

  static num distanceBetween(Point a, Point b) {
    var dx = a.x - b.x;
    var dy = a.y - b.y;
    return sqrt(dx * dx + dy * dy);
  }
}
// Note: Consider using top-level functions, instead of static methods, for common or widely used utilities and functionality.

void main() {
  assert(Queue.initialCapacity == 16);
  var a = Point(1, 2);
  var b = Point(4, 6);
  var distance = Point.distanceBetween(a, b);
  print(distance);
}

// https://www.dartlang.org/guides/language/language-tour#class-variables-and-methods
