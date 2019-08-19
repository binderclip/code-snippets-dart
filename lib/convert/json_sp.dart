import 'dart:convert';
import 'dart:io';

import 'package:dart_code_snippets/dart_lang/classes/getting_an_object_s_type.dart';
import 'package:dart_code_snippets/stack_trace/stack_trace.dart';

final userJs = """{
  "name": "John Smith",
  "email": "john@example.com"
}""";

jsonDecodeDemo() {
  printFuncName();
  var user = jsonDecode(userJs);
  print(user);
  printType(user); // _InternalLinkedHashMap<String, dynamic>
}

jsonEncodeDemo() {
  printFuncName();
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 'golden rings'
  };
  print(gifts);
  print(jsonEncode(gifts));
}

class User {
  final String name;
  final String email;

  User(this.name, this.email);

  User.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        email = json['email'];

  Map<String, dynamic> toJson() =>
    {
      'name': name,
      'email': email,
    };
}

jsonDecodeModel() {
  printFuncName();
  var user = User.fromJson(jsonDecode(userJs));
  print('user: ${user}, .name: ${user.name}, .email: ${user.email}');
}

jsonEncodeModel() {
  printFuncName();
  var user = User('Foo', 'bar@baz.com');
  var userJs = jsonEncode(user);
  print(userJs);
}

readJsonFileDemo() {
  printFuncName();
  File('lib/convert/foo.json').readAsString().then((fileContent) => jsonDecode(fileContent)).then((jsonData) => print(jsonData));
}

writeJsonFileDemo() {
  printFuncName();
  var user = User('Foo', 'bar@baz.com');
  var userJs = jsonEncode(user);
  File('lib/convert/bar.json').writeAsString(userJs).then((file) => print(file));
}

main() {
  jsonDecodeDemo();
  jsonEncodeDemo();
  jsonDecodeModel();
  jsonEncodeModel();
  readJsonFileDemo();
  writeJsonFileDemo();
}
