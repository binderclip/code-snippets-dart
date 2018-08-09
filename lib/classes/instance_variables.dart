class Point {
  num x; // Declare instance variable x, initially null.
  num y; // Declare y, initially null.
  num z = 0; // Declare z, initially 0.
}


void main() {
  var point = Point();
  point.x = 4; // Use the setter method for x.
  assert(point.x == 4); // Use the getter method for x.
  assert(point.y == null); // Values default to null.
  assert(point.z == 0);
}

// https://www.dartlang.org/guides/language/language-tour#instance-variables
// https://www.dartlang.org/guides/language/language-tour#getters-and-setters
