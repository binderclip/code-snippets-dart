import 'dart:math';

class Point {
  num x, y;
  Point(this.x, this.y);

  num distanceTo(Point p) {
    var dx = p.x - x;
    var dy = p.y - y;
    return sqrt(dx * dx + dy * dy);
  }
}

class Point2 {
  num x;
  num y;

  Point2(num x, num y) {
    this.x = x;
    this.y = y;
  }
}

main() {
  var p = Point(1, 3);

  // Set the value of the instance variable y.
  p.y = 8;

  // Get the value of y.
  assert(p.y == 8);

  // Invoke distanceTo() on p.
  num distance = p.distanceTo(Point(4, 4));
  print(distance);
}

// https://www.dartlang.org/guides/language/language-tour#using-class-members
