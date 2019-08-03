class Person {
  String firstName;

  Person.fromJson(Map data) {
    print('in Person');
  }

  void doSomething() {
    print('Person do something');
  }
}

class Employee extends Person {
  // Person does not have a default constructor;
  // you must call super.fromJson(data).
  Employee.fromJson(Map data) : super.fromJson(data) {
    print('in Employee');
  }

  void doSomething() {
    print('Employee do something');
  }
}

main() {
  var emp = Employee.fromJson({});

  // Prints:
  // in Person
  // in Employee
  if (emp is Person) {
    // Type check
    emp.firstName = 'Bob';
  }
  (emp as Person).firstName = 'Bob';  // note: unnecessary cast

  // Prints:
  // Employee do something
  // Employee do something
  emp.doSomething();
  (emp as Person).doSomething();  // note: unnecessary cast
}

// https://www.dartlang.org/guides/language/language-tour#type-test-operators
