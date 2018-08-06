main() {
  String visibilityString(bool isPublic) => isPublic ? 'public' : 'private';
  String playerName(String name) => name ?? 'Guest';
  print(visibilityString(true) + ', ' + visibilityString(false));
  print(playerName(null) + ', ' + playerName('Foo'));
}

// https://www.dartlang.org/guides/language/language-tour#conditional-expressions
