void misbehave() {
  try {
    dynamic foo = true;
//    throw Exception('Test Exception');
    print(foo++); // Runtime error
  } on Exception {
    print('catch the Exception!');
  } catch (e) {
    print('misbehave() partially handled ${e.runtimeType}.');
    rethrow; // Allow callers to see the exception.
  }
}

void main() {
  try {
    misbehave();
  } catch (e, s) {
    print('main() finished handling ${e.runtimeType}.');
    print('StackTrace is $s}');
  }
}

// https://www.dartlang.org/guides/language/language-tour#catch
