import 'dart:convert';

import 'package:dart_code_snippets/json_serializable_sp/user.dart';

final userJs = """{
  "name": "John Smith",
  "email": "john@example.com",
  "address": {
    "street": "My st.",
    "city": "New York"
  },
  "nicknames": [
    "Joohn",
    "Johhn",
    "Johnn"
  ]
}""";

main() {
  Map userMap = jsonDecode(userJs);
  var user = User.fromJson(userMap);
  print('user: ${user}, .name: ${user.name}, .email: ${user.email}, .address.street: ${user.address.street}, .address.city: ${user.address.city}, .nicknames: ${user.nicknames}');

  var userJs2 = jsonEncode(user);
  print(userJs2);
}
