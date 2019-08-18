main() {
// Make sure the variable has a non-null value.
  var text = 's';
  assert(text != null);

// Make sure the value is less than 100.
  var number = 90;
  assert(number < 100);

  var urlString = 'https://example.com';
// Make sure this is an https URL.
  assert(urlString.startsWith('https'));

  assert(urlString.startsWith('https'),
  'URL ($urlString) should start with "https".');
}

// Assert statements have no effect in production code; they’re for development only.
// https://www.dartlang.org/guides/language/language-tour#assert
