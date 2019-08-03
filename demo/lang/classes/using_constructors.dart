class Point {
  num x, y;
  Point(this.x, this.y);

  Point.fromJson(Map<String, num> json): x = json['x'], y = json['y'];

  Point.fromJson2(Map<String, num> json): x = json['x'], y = json['y'] {
    print('In Point.fromJson2(): ($x, $y)');
  }

  Point.fromJson3(Map<String, num> json) {
    num x = json['x'], y = json['y'];
    print('In Point.fromJson3(): ($x, $y)');
    this.x = x;
    this.y = y;
  }
}

main() {
  var p0 = Point(0, 0);
  var p1 = Point.fromJson({'x': 1, 'y': 0});
  var p2 = Point.fromJson2({'x': 2, 'y': 0});
  var p3 = Point.fromJson3({'x': 3, 'y': 0});

  assert(p0.x == 0);
  assert(p1.x == 1);
  assert(p2.x == 2);
  assert(p3.x == 3);
}

// https://www.dartlang.org/guides/language/language-tour#using-constructors
