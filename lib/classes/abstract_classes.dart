// This class is declared abstract and thus
// can't be instantiated.
abstract class AbstractContainer {
  // Define constructors, fields, methods...

  void updateChildren(); // Abstract method.
}


class MyAbstractContainer implements AbstractContainer {
  // Define constructors, fields, methods...

  void updateChildren() {
    print('in MyAbstractContainer updateChildren');
  }
}


main() {
//  var ac = AbstractContainer(); // Error: The class 'AbstractContainer' is abstract and can't be instantiated.
  var mac = MyAbstractContainer();
  mac.updateChildren();
}

// https://www.dartlang.org/guides/language/language-tour#abstract-classes
