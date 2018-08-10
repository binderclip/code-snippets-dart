import 'dart:math';


class Point {
  num x, y;

  Point(num x, num y) {
    // There's a better way to do this, stay tuned.
    this.x = x;
    this.y = y;
  }
}


class Point2 {
  num x, y;

  // Syntactic sugar for setting x and y
  // before the constructor body runs.
  Point2(this.x, this.y);
}


class Point3 {
  num x, y;
// Default constructors
// If you don’t declare a constructor, a default constructor is provided for you.
// The default constructor has no arguments and invokes the no-argument constructor in the superclass.
}


class Point4 {
  num x, y;

  Point4(this.x, this.y);

  // Named constructor
  Point4.origin() {
    x = 0;
    y = 0;
  }
}


void printPoint(p) {
  print('${p.runtimeType}(${p.x}, ${p.y})');
}


void testDefaultNamedConstructors() {
  print('=== testDefaultNamedConstructors ===');
  var p1 = Point(1, 2);
  var p2 = Point2(3, 4);
  var p3 = Point3();
  var p4_1 = Point4(5, 6);
  var p4_2 = Point4.origin();
  for (var p in [p1, p2, p3, p4_1, p4_2]) {
    printPoint(p);
  }
}


class Person {
  String firstName;

  Person.fromJson(Map data) {
    print('in Person');
  }
}


class Employee extends Person {
  // Person does not have a default constructor;
  // you must call super.fromJson(data).
  Employee.fromJson(Map data) : super.fromJson(data) {
    print('in Employee');
  }
}


void testInvokingSuperclassConstructor() {
  print('=== testInvokingSuperclassConstructor ===');
  var emp = new Employee.fromJson({});

  // Prints:
  // in Person
  // in Employee
  if (emp is Person) {
    // Type check
    emp.firstName = 'Bob';
  }
  (emp as Person).firstName = 'Bob';
}


class Point5 {
  num x, y;
  // Initializer list sets instance variables before
  // the constructor body runs.
  Point5.fromJson(Map<String, num> json)
      : x = json['x'],
        y = json['y'] {
    print('In Point.fromJson(): ($x, $y)');
  }

}


class Point6 {
  final num x;
  final num y;
  final num distanceFromOrigin;

  Point6(x, y)
      : x = x,
        y = y,
        distanceFromOrigin = sqrt(x * x + y * y);
}


void testInitializerList() {
  print('=== testInitializerList ===');
  var p5 = Point5.fromJson({"x": 7, "y": 8});
  printPoint(p5);
  var p6 = Point6(3, 4);
  print('${p6.runtimeType}(${p6.x}, ${p6.y}, ${p6.distanceFromOrigin})');
}


class Point7 {
  num x, y;

  // The main constructor for this class.
  Point7(this.x, this.y);

  // Delegates to the main constructor.
  Point7.alongXAxis(num x) : this(x, 0);
}


void testRedirectingConstructors() {
  print('=== testRedirectingConstructors ===');
  var p7 = Point7.alongXAxis(10);
  printPoint(p7);
}


class ImmutablePoint {
  static final ImmutablePoint origin = const ImmutablePoint(0, 0);

  final num x, y;

  const ImmutablePoint(this.x, this.y);
}


void testConstantConstructors() {
  print('=== testConstantConstructors ===');
  final ip = ImmutablePoint(1, 2);
  printPoint(ip);
  // ip.x = 100; // 'x' can't be used as a setter because it is final.
  const ip2 = ImmutablePoint(3, 4);
  printPoint(ip2);
}


class Logger {
  final String name;
  bool mute = false;

  // _cache is library-private, thanks to
  // the _ in front of its name.
  static final Map<String, Logger> _cache = <String, Logger>{};

  factory Logger(String name) {
    if (_cache.containsKey(name)) {
      return _cache[name];
    } else {
      final logger = Logger._internal(name);
      _cache[name] = logger;
      return logger;
    }
  }

  Logger._internal(String name) : name = name {
    print('create "$name" logger');
  }

  void log(String msg) {
    if (!mute) print('$name: $msg');
  }
}


void testFactoryConstructors() {
  print('=== testFactoryConstructors ===');
  var logger = Logger('UI');
  logger.log('Button clicked');
  var logger2 = Logger('UI');
  logger2.log('Button clicked 2');
}


void main() {
  testDefaultNamedConstructors();
  testInvokingSuperclassConstructor();
  testInitializerList();
  testRedirectingConstructors();
  testConstantConstructors();
  testFactoryConstructors();
}

// https://www.dartlang.org/guides/language/language-tour#constructors
