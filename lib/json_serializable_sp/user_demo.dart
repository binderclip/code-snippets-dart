import 'dart:convert';

import 'package:dart_code_snippets/json_serializable_sp/user.dart';

final userJs = """{
  "name": "John Smith",
  "email": "john@example.com"
}""";

main() {
  Map userMap = jsonDecode(userJs);
  var user = User.fromJson(userMap);
  print('user: ${user}, .name: ${user.name}, .email: ${user.email}');

  var userJs2 = jsonEncode(user);
  print(userJs2);
}
