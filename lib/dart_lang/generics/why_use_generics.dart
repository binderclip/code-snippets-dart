abstract class ObjectCache {
  Object getByKey(String key);
  void setByKey(String key, Object value);
}

abstract class StringCache {
  String getByKey(String key);
  void setByKey(String key, String value);
}

abstract class Cache<T> {
  T getByKey(String key);
  void setByKey(String key, T value);
}

main() {
  var names = List<String>();
  names.addAll(['Seth', 'Kathy', 'Lars']);
//  names.add(42); // Error
}

// https://www.dartlang.org/guides/language/language-tour#why-use-generics
