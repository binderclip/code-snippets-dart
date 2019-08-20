import 'dart:convert';

import 'package:dart_code_snippets/json_serializable_sp/my_enum.dart';

final myEnumJs = """{
  "e": "bar"
}""";

final myEnumJs2 = """{
  "e": "NOT-VALID-ENUM"
}""";

final myEnumJs3 = """{
  "e": 1
}""";

main() {
  // dump
  print('== dump MyEnum ==');
  var myEnum = MyEnum(E.bar);
  print(jsonEncode(myEnum));

  // load
  print('== load MyEnum ==');
  var myEnum2 = MyEnum.fromJson(jsonDecode(myEnumJs));
  print(myEnum2);

  // var myEnum3 = MyEnum.fromJson(jsonDecode(myEnumJs2)); // Invalid argument(s): `NOT-VALID-ENUM` is not one of the supported values: foo, bar
  // print(myEnum3);

  // var myEnum4 = MyEnum.fromJson(jsonDecode(myEnumJs3)); // Invalid argument(s): `1` is not one of the supported values: foo, bar
  // print(myEnum4);
}
