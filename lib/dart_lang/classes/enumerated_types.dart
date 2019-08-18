enum Color { red, green, blue }

//class MyColor extends Color {} // Error: Classes can't extend an enum.
// You can’t subclass, mix in, or implement an enum.
// You can’t explicitly instantiate an enum.

main() {
  assert(Color.red.index == 0);
  assert(Color.green.index == 1);
  assert(Color.blue.index == 2);
  List<Color> colors = Color.values;
  assert(colors[2] == Color.blue);
  print(Color.values);
  var aColor = Color.blue;

  switch (aColor) {
    case Color.red:
      print('Red as roses!');
      break;
    case Color.green:
      print('Green as grass!');
      break;
    default: // Without this, you see a WARNING.
      print(aColor); // 'Color.blue'
  }
}

// https://www.dartlang.org/guides/language/language-tour#enumerated-types
