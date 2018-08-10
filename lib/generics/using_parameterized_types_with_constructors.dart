main() {
  var names = List<String>();
  names.addAll(['Seth', 'Kathy', 'Lars', 'Seth']);
  var nameSet = Set<String>.from(names);

  print(names);
  print(nameSet);

  var myMap = Map<int, String>();
  myMap.addAll({1: "foo", 2: "bar"});
  print(myMap);
}

// https://www.dartlang.org/guides/language/language-tour#using-parameterized-types-with-constructors
